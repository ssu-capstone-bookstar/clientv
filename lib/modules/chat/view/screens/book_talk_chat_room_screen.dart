import 'package:book/common/components/text_field/search_text_field.dart';
import 'package:book/common/theme/style/app_paddings.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/assets.gen.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/auth/view_model/auth_state.dart';
import 'package:book/modules/auth/view_model/auth_view_model.dart';
import 'package:book/modules/chat/model/chat_message_request.dart';
import 'package:book/modules/chat/model/chat_message_response.dart';
import 'package:book/modules/chat/state/chat_state.dart';
import 'package:book/modules/chat/view_model/chat_view_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

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

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _textController.addListener(() {
      setState(() {});
    });
    Future.microtask(() {
      ref
          .read(chatViewModelProvider.notifier)
          .fetchChatRoomState(widget.roomId);
    });
  }

  _updateVisibleOption(bool value) {
    setState(() {
      _visibleOption = value;
    });
  }

  _handleTextSend() async {
    await ref.read(chatViewModelProvider.notifier).sendMessage(
        widget.roomId, _textController.text, MessageType.text, null);
    _clearText();
    _refreshChat();
  }

  _clearText() {
    setState(() {
      _textController.clear();
    });
  }

  _refreshChat() {
    ref.read(chatViewModelProvider.notifier).fetchChatRoomState(widget.roomId);
  }

  _handleImageSend(List<XFile> pickedFiles) async {
    for (XFile file in pickedFiles) {
      await ref
          .read(chatViewModelProvider.notifier)
          .sendMessage(widget.roomId, null, MessageType.image, file);
    }
    if (pickedFiles.isNotEmpty) {
      _refreshChat();
    }
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
      _updateVisibleOption(false);
      _handleImageSend(pickedFiles);
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _textController.dispose();
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

    return Scaffold(
      appBar: AppBar(
        title: Text(roomName),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => context.pop(),
          ),
        ],
      ),
      body: SafeArea(
        child: state.when(
          data: (data) => Column(
            children: [
              Expanded(
                  child: _buildChatHistory(_scrollController, data, memberId)),
              _buildChatInputWrap(_textController, _visibleOption,
                  _updateVisibleOption, _handleTextSend, _clickInputOption)
            ],
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, stack) => Center(child: Text('Error: $err')),
        ),
      ),
    );
  }

  Widget _buildChatHistory(
      ScrollController scrollController, ChatState data, int currentMemberId) {
    final messages = data.chatHistory.data;

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
            )
          );

        default:
          return Container();
      }
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
                              ]
                            : [
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

  Widget _buildChatInputWrap(
      TextEditingController textController,
      bool visibleOption,
      Function(bool) updateVisibleOption,
      Function() handleTextSend,
      Function(ImageSource) clickInputOption) {
    return Container(
      height: !visibleOption ? 129 : 129 + 249,
      decoration: BoxDecoration(
        color: ColorName.g7,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: AppPaddings.CHAT_INPUT_PADDING,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildChatInput(
              textController,
              visibleOption,
              updateVisibleOption,
              handleTextSend,
            ),
            if (visibleOption) _buildChatInputOption(clickInputOption)
          ],
        ),
      ),
    );
  }

  Widget _buildChatInput(
      TextEditingController textController,
      bool visibleOption,
      Function(bool) updateVisibleOption,
      Function() handleTextSend) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          child: !visibleOption
              ? Assets.icons.icBookpickChatOption.svg()
              : Icon(Icons.close),
          onTap: () {
            updateVisibleOption(!visibleOption);
          },
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: SearchTextField(
            controller: textController,
            backgroundColor: ColorName.w1,
            textColor: ColorName.b1,
            hintText: '메세지를 작성해 보세요',
            hintStyle: AppTexts.b8.copyWith(color: ColorName.g3),
            suffixIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 13),
              child: textController.text.isNotEmpty
                  ? Assets.icons.icBookpickChatSendColored
                      .svg(width: 22, height: 22)
                  : Assets.icons.icBookpickChatSendDisabled
                      .svg(width: 22, height: 22),
            ),
            onTap: () {
              updateVisibleOption(false);
            },
            onTapSuffixIcon: () {
              handleTextSend();
            },
            keyboardType: TextInputType.multiline,
            maxLines: null,
          ),
        ),
      ],
    );
  }

  Widget _buildChatInputOption(Function(ImageSource) clickInputOption) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildOptionButton(
                  "카메라", Assets.icons.icCamera.svg(width: 27, height: 27), () {
                clickInputOption(ImageSource.camera);
              }),
              _buildOptionButton(
                  "갤러리",
                  Assets.icons.icBookpickChatOptionPicture
                      .svg(width: 24, height: 24), () {
                clickInputOption(ImageSource.gallery);
              })
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOptionButton(
    String text,
    Widget icon,
    Function() onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38.5),
                  color: ColorName.dim2),
              child: Center(child: icon)),
          SizedBox(
            height: 6,
          ),
          Text(
            text,
            style: AppTexts.b8.copyWith(color: ColorName.g2),
          )
        ],
      ),
    );
  }
}
