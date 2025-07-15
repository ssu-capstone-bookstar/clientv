import 'package:book/common/components/text_field/search_text_field.dart';
import 'package:book/common/theme/style/app_paddings.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/assets.gen.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/chat/state/chat_state.dart';
import 'package:book/modules/chat/view_model/chat_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
  ChatInputOptionType? _chatInputOptionType = null;

  _updateVisibleOption(bool value) {
    setState(() {
      if (!value && _chatInputOptionType != null) {
        _chatInputOptionType = null;
      } else {
        _visibleOption = value;
      }
    });
  }

  _handleSend() {
    print("handleSend");
  }

  _updateInputOption(ChatInputOptionType value) {
    setState(() {
      _chatInputOptionType = value;
    });
  }

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

  @override
  void dispose() {
    _scrollController.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(chatViewModelProvider);

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
              Expanded(child: _buildChatHistory(_scrollController, data)),
              _buildChatInputWrap(
                  _textController,
                  _visibleOption,
                  _updateVisibleOption,
                  _handleSend,
                  _chatInputOptionType,
                  _updateInputOption)
            ],
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, stack) => Center(child: Text('Error: $err')),
        ),
      ),
    );
  }

  Widget _buildChatHistory(ScrollController scrollController, ChatState data) {
    final messages = data.chatHistory.data;
    return messages.isEmpty
        ? _buildEmptyChatRoom()
        : CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverToBoxAdapter(
                  child: Text(
                "",
                style: AppTexts.b1.copyWith(color: ColorName.e0),
              ))
            ],
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
      Function() handleSend,
      ChatInputOptionType? chatInputOptionType,
      Function(ChatInputOptionType) updateInputOption) {
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
              handleSend,
            ),
            if (visibleOption)
              _buildChatInputOption(chatInputOptionType, updateInputOption)
          ],
        ),
      ),
    );
  }

  Widget _buildChatInput(
      TextEditingController textController,
      bool visibleOption,
      Function(bool) updateVisibleOption,
      Function() handleSend) {
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
              handleSend();
            },
            keyboardType: TextInputType.multiline,
            maxLines: null,
          ),
        ),
      ],
    );
  }

  Widget _buildChatInputOption(ChatInputOptionType? chatInputOptionType,
      Function(ChatInputOptionType) updateInputOption) {
    Widget currentView = Container();

    switch (chatInputOptionType) {
      case null:
        currentView = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildOptionButton(
                    "카메라", Assets.icons.icCamera.svg(width: 27, height: 27),
                    () {
                  updateInputOption(ChatInputOptionType.camera);
                }),
                _buildOptionButton(
                    "갤러리",
                    Assets.icons.icBookpickChatOptionPicture
                        .svg(width: 24, height: 24), () {
                  updateInputOption(ChatInputOptionType.gallery);
                })
              ],
            ),
          ],
        );
        break;
      case ChatInputOptionType.camera:
        currentView = Center(child: Text("camera"));
        break;
      case ChatInputOptionType.gallery:
        currentView = Center(child: Text("gellery"));
        break;
    }

    return Expanded(
      child: currentView,
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
