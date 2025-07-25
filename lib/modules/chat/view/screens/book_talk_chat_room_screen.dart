import 'package:ably_flutter/ably_flutter.dart' as ably;
import 'package:book/common/theme/style/app_paddings.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/assets.gen.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/auth/view_model/auth_state.dart';
import 'package:book/modules/auth/view_model/auth_view_model.dart';
import 'package:book/modules/chat/model/chat_message_request.dart';
import 'package:book/modules/chat/model/chat_message_response.dart';
import 'package:book/modules/chat/state/chat_state.dart';
import 'package:book/modules/chat/view/widgets/chat_input_wrap.dart';
import 'package:book/modules/chat/view_model/chat_view_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class BookTalkChatRoomScreen extends ConsumerStatefulWidget {
  const BookTalkChatRoomScreen({super.key, required this.roomId});

  final int roomId;

  @override
  ConsumerState<BookTalkChatRoomScreen> createState() =>
      _BookTalkChatRoomScreen();
}

class _BookTalkChatRoomScreen extends ConsumerState<BookTalkChatRoomScreen> {
  late final ScrollController _scrollController;
  final TextEditingController _textController = TextEditingController();
  bool _visibleOption = false;
  final ImagePicker _picker = ImagePicker();
  ably.RealtimeChannel? _channel;
  final FocusNode _chatInputFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
    _textController.addListener(() {
      setState(() {});
    });
    Future.microtask(() async {
      await ref
          .read(chatViewModelProvider.notifier)
          .initChatRoomState(widget.roomId);
      _channel = await ref
          .read(chatViewModelProvider.notifier)
          .initAbly(widget.roomId);
      _subscribe();
    });
  }

  void _onScroll() async {
    const margin = 10;
    // 맨 위에 도달했는지 확인
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent + margin) {
      await ref
          .read(chatViewModelProvider.notifier)
          .fetchPreviousChatHistory(widget.roomId);
    }
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
    if (value) _chatInputFocusNode.unfocus();
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
    _chatInputFocusNode.unfocus();
    _updateVisibleOption(false);
  }

  @override
  void dispose() {
    _channel?.detach();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(chatViewModelProvider);
    final user = ref.watch(authViewModelProvider).value;
    final memberId = (user is AuthSuccess) ? user.memberId : 0;

    String roomName = ChatViewModel.categories
        .firstWhere((item) => item.roomId == widget.roomId,
            orElse: () => ChatViewModel.defaultCategory)
        .name;

    return GestureDetector(
      onTap: () {
        _clearChatInput();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(roomName),
          actions: [
            IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () =>
                    context.push('/book-talk/chat-room/${widget.roomId}/menu'))
          ],
        ),
        body: SafeArea(
          child: state.when(
            data: (data) => Column(
              children: [
                Expanded(
                    child: _buildChatHistory(_scrollController, data, memberId)),
                ChatInputWrap(
                  textController: _textController,
                  visibleOption: _visibleOption,
                  focusNode: _chatInputFocusNode,
                  updateVisibleOption: _updateVisibleOption,
                  handleTextSend: _handleTextSend,
                  clickInputOption: _clickInputOption,
                )
              ],
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (err, stack) => Center(child: Text('Error: $err')),
          ),
        ),
      ),
    );
  }

  Widget _buildChatHistory(
      ScrollController scrollController, ChatState data, int currentMemberId) {
    final messages = data.chatHistory;

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

    return messages.isEmpty
        ? _buildEmptyChatRoom()
        : Padding(
            padding: AppPaddings.CHAT_CONTAINER_PADDING,
            child: CustomScrollView(
              controller: _scrollController,
              reverse: true,
              slivers: [
                SliverList(
                    delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final message = messages[index];
                    final isMe = message.senderId == currentMemberId;
                    final profileImage = getProfileImage(message.senderId);
                    final backgroundColor = !isMe ? ColorName.g7 : ColorName.p1;
                    final textStyle = AppTexts.b8
                        .copyWith(color: !isMe ? ColorName.w1 : Colors.white);
                    return Padding(
                      padding: EdgeInsets.only(bottom: 10),
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
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: backgroundColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: getChatWidget(message, textStyle),
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
                    );
                  },
                  childCount: messages.length,
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
