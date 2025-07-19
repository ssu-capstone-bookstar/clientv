import 'package:book/common/components/text_field/search_text_field.dart';
import 'package:book/common/theme/style/app_paddings.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/assets.gen.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class ChatInputWrap extends ConsumerWidget {
  final TextEditingController textController;
  final bool visibleOption;
  final Function(bool) updateVisibleOption;
  final Function() handleTextSend;
  final Function(ImageSource) clickInputOption;
  final FocusNode focusNode;

  const ChatInputWrap({
    super.key,
    required this.textController,
    required this.visibleOption,
    required this.updateVisibleOption,
    required this.handleTextSend,
    required this.clickInputOption,
    required this.focusNode,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              focusNode,
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
      Function() handleTextSend,
      FocusNode focusNode) {
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
            focusNode: focusNode,
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
