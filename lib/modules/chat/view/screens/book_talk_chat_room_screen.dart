import 'package:ably_flutter/ably_flutter.dart' as ably;
import 'package:bookstar/common/components/base_screen.dart';
import 'package:bookstar/common/theme/style/app_paddings.dart';
import 'package:bookstar/common/theme/style/app_texts.dart';
import 'package:bookstar/gen/assets.gen.dart';
import 'package:bookstar/gen/colors.gen.dart';
import 'package:bookstar/modules/auth/view_model/auth_state.dart';
import 'package:bookstar/modules/auth/view_model/auth_view_model.dart';
import 'package:bookstar/modules/book_log/view/widgets/report_dialog.dart';
import 'package:bookstar/modules/book_log/view/widgets/report_success_dialog.dart';
import 'package:bookstar/modules/book_log/view_model/book_log_view_model.dart';
import 'package:bookstar/modules/chat/model/chat_message_request.dart';
import 'package:bookstar/modules/chat/model/chat_message_response.dart';
import 'package:bookstar/modules/chat/state/chat_state.dart';
import 'package:bookstar/modules/chat/view/widgets/chat_input_wrap.dart';
import 'package:bookstar/modules/chat/view_model/chat_view_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class BookTalkChatRoomScreen extends BaseScreen {
  const BookTalkChatRoomScreen({super.key, required this.roomId});

  final int roomId;

  @override
  BaseScreenState<BookTalkChatRoomScreen> createState() =>
      _BookTalkChatRoomScreen();
}

class _BookTalkChatRoomScreen extends BaseScreenState<BookTalkChatRoomScreen> {
  @override
  bool enableRefreshIndicator() => false;
  final TextEditingController _textController = TextEditingController();
  bool _visibleOption = false;
  final ImagePicker _picker = ImagePicker();
  ably.RealtimeChannel? _channel;

  @override
  void initState() {
    super.initState();
    _textController.addListener(() {
      setState(() {});
    });
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final notifier = ref.read(chatViewModelProvider.notifier);
      await notifier.initChatRoomState(widget.roomId);
      _channel = await notifier.initAbly(widget.roomId);
      _subscribe();
    });
  }

  
  
  @override
  Future<void> onTopReached() async {
    final notifier = ref.read(chatViewModelProvider.notifier);
    await notifier.fetchPreviousChatHistory(widget.roomId);
  }

  @override
  onScreenTap() {
    _clearChatInput();
  }

  _subscribe() {
    /// ably subscribe
    _channel?.subscribe(name: "message").listen((message) {
      ref.read(chatViewModelProvider.notifier).addChatHistory(message.data);
    });
  }

  _publish(ChatMessageResponse data) {
    /// ably publish
    _channel?.publish(name: "message", data: data.toJson());
  }

  _updateVisibleOption(bool value) {
    setState(() {
      _visibleOption = value;
    });
    if (value) focusNode.unfocus();
  }

  _handleTextSend() async {
    final data = await ref.read(chatViewModelProvider.notifier).sendMessage(
        widget.roomId, _textController.text, MessageType.text, null);
    _publish(data);
    _clearText();
  }

  _clearText() {
    setState(() {
      _textController.clear();
    });
  }

  _handleImageSend(List<XFile> pickedFiles) async {
    for (XFile file in pickedFiles) {
      final data = await ref
          .read(chatViewModelProvider.notifier)
          .sendMessage(widget.roomId, null, MessageType.image, file);
      _publish(data);
    }
    _updateVisibleOption(false);
  }

  _clickInputOption(ImageSource source) async {
    List<XFile> pickedFiles = [];
    switch (source) {
      case ImageSource.camera:
        final XFile? image = await _picker.pickImage(source: source);
        if (image != null) {
          pickedFiles.add(image);
        }
        break;
      case ImageSource.gallery:
        pickedFiles = await _picker.pickMultiImage();
    }

    if (pickedFiles.isNotEmpty && mounted) {
      _handleImageSend(pickedFiles);
    }
  }

  _clearChatInput() {
    focusNode.unfocus();
    _updateVisibleOption(false);
  }

  _handleMessageReport(int messageId) async {
    final result = await showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: ColorName.b1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (context) => ReportDialog());

    if (result == null) return;

    ReportType? reportType = result?['reportType'];
    String? content = result?['content'];

    if (reportType == null || content == null) return;
    await ref
        .read(chatViewModelProvider.notifier)
        .reportMessage(messageId, reportType, content);
    if (!mounted) return;
    await showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: ColorName.b1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (context) => ReportSuccessDialog());
  }

  @override
  void dispose() {
    _channel?.detach();
    super.dispose();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    String roomName = ChatViewModel.categories
        .firstWhere((item) => item.roomId == widget.roomId,
            orElse: () => ChatViewModel.defaultCategory)
        .name;
    return AppBar(
      title: Text(roomName),
      actions: [
        IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () =>
                context.push('/book-talk/chat-room/${widget.roomId}/menu'))
      ],
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    final state = ref.watch(chatViewModelProvider);
    final user = ref.watch(authViewModelProvider).value;
    final memberId = (user is AuthSuccess) ? user.memberId : 0;

    return GestureDetector(
      onTap: () {
        _clearChatInput();
      },
      child: SafeArea(
        child: state.when(
          data: (data) => Column(
            children: [
              Expanded(
                  child: _buildChatHistory(
                      scrollController: scrollController,
                      data: data,
                      currentMemberId: memberId,
                      onReport: _handleMessageReport)),
              ChatInputWrap(
                textController: _textController,
                visibleOption: _visibleOption,
                focusNode: focusNode,
                updateVisibleOption: _updateVisibleOption,
                handleTextSend: _handleTextSend,
                clickInputOption: _clickInputOption,
              )
            ],
          ),
          loading: loading,
          error: error("채팅방 정보를 불러올 수 없습니다."),
        ),
      ),
    );
  }

  Widget _buildChatHistory({
    required ScrollController scrollController,
    required ChatState data,
    required int currentMemberId,
    required Function(int) onReport,
  }) {
    final revertMessages = data.chatHistory.reversed.toList();

    Widget? getProfileImage(int senderId) {
      final profileImageUrl = data.chatParticipants.participants
          .firstWhereOrNull((participant) => participant.memberId == senderId)
          ?.profileImageUrl;
      return profileImageUrl != null
          ? GestureDetector(
              onTap: () {
                context.push(
                    '/book-talk/chat-room/${widget.roomId}/book-log/$senderId');
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  imageUrl: profileImageUrl,
                  width: 40,
                  height: 40,
                  errorWidget: (context, url, error) => Container(),
                ),
              ),
            )
          : null;
    }

    Widget getChatWidget(ChatMessageResponse message, TextStyle textStyle) {
      switch (message.messageType) {
        case MessageType.text:
          return Padding(
            padding: AppPaddings.CHAT_MESSAGE_PADDING,
            child: Text(
              message.content,
              style: textStyle,
            ),
          );
        case MessageType.image:
          return Padding(
              padding: AppPaddings.CHAT_MESSAGE_PADDING,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: message.fileUrl ?? "",
                  width: 140,
                  height: 140,
                  errorWidget: (context, url, error) => Container(),
                ),
              ));

        default:
          return Container();
      }
    }

    Widget getDateWidget(String createdAt) {
      DateTime dt = DateTime.parse(createdAt);
      String formatted = DateFormat('MM/dd\nHH:mm').format(dt);
      return Text(formatted, style: AppTexts.b12.copyWith(color: ColorName.w1));
    }

    return revertMessages.isEmpty
        ? _buildEmptyChatRoom()
        : Padding(
            padding: AppPaddings.CHAT_CONTAINER_PADDING,
            child: CustomScrollView(
              controller: scrollController,
              slivers: [
                SliverList(
                    delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final message = revertMessages[index];
                    final isMe = message.senderId == currentMemberId;
                    final profileImage = getProfileImage(message.senderId);
                    final backgroundColor = !isMe ? ColorName.g7 : ColorName.p1;
                    final textStyle = AppTexts.b8
                        .copyWith(color: !isMe ? ColorName.w1 : Colors.white);
                    return Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Slidable(
                        enabled: !isMe,
                        key: ValueKey(message.id),
                        endActionPane: ActionPane(
                          motion: const DrawerMotion(),
                          extentRatio: 0.3,
                          children: [
                            SlidableAction(
                              onPressed: (context) {
                                onReport(message.id);
                              },
                              backgroundColor: ColorName.g7,
                              foregroundColor: ColorName.r,
                              label: '신고',
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: !isMe
                              ? MainAxisAlignment.start
                              : MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: !isMe
                              ? [
                                  if (profileImage != null) profileImage,
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ConstrainedBox(
                                    constraints: BoxConstraints(maxWidth: 140),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(message.senderName,
                                            style: AppTexts.b12.copyWith(
                                                color: ColorName.g1,
                                                overflow:
                                                    TextOverflow.ellipsis)),
                                        SizedBox(height: 4),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: backgroundColor,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child:
                                              getChatWidget(message, textStyle),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  getDateWidget(message.createdAt),
                                ]
                              : [
                                  getDateWidget(message.createdAt),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  ConstrainedBox(
                                    constraints: BoxConstraints(maxWidth: 140),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: backgroundColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: getChatWidget(message, textStyle),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  if (profileImage != null) profileImage
                                ],
                        ),
                      ),
                    );
                  },
                  childCount: revertMessages.length,
                ))
              ],
            ),
          );
  }

  Widget _buildEmptyChatRoom() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Assets.icons.icBookpickChatCharacter.svg(),
          SizedBox(height: 12),
          Text(
            "채팅을 시작해 보세요",
            style: AppTexts.b8.copyWith(color: ColorName.g3),
          ),
        ],
      ),
    );
  }
}
