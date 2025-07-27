import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/book_log/view/widgets/report_text_field.dart';
import 'package:book/modules/book_log/view_model/book_log_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DiaryFeedReportDialog extends StatefulWidget {
  const DiaryFeedReportDialog({super.key});

  @override
  State<DiaryFeedReportDialog> createState() => _DiaryFeedReportDialogState();
}

class _DiaryFeedReportDialogState extends State<DiaryFeedReportDialog>
    with WidgetsBindingObserver {
  ReportType? _selectedValue;
  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _textController.addListener(() {
      setState(() {});
    });
  }

  _hideKeyboard() {
    _focusNode.unfocus();
  }

  _onSubmit() {
    final isNotEmpty =
        _textController.value.text.isNotEmpty && _selectedValue != null;
    if (!isNotEmpty) return;

    Navigator.pop(context, {
      'content': _textController.value.text,
      "reportType": _selectedValue,
    });
  }

  // 이 메서드는 키보드, 시스템 UI 등 화면 metric이 바뀔 때 호출됨
  @override
  void didChangeMetrics() {
    super.didChangeMetrics();

    final bottomInset = WidgetsBinding
        .instance.platformDispatcher.views.first.viewInsets.bottom;
    if (bottomInset > 0.0) {
      // 키보드가 올라온 직후 frame build 후 스크롤
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (_scrollController.hasClients) {
          _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        }
      });
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: _hideKeyboard,
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom + 24,
            left: 16,
            right: 16,
            top: 24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("신고 유형을 선택해 주세요",
                      style: AppTexts.b5.copyWith(color: ColorName.w1)),
                  IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => context.pop()),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ...reportTypes.map((reportType) {
                return Theme(
                  data: Theme.of(context).copyWith(
                    radioTheme: RadioThemeData(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity: VisualDensity.compact,
                      fillColor:
                          WidgetStateProperty.resolveWith<Color>((states) {
                        if (states.contains(WidgetState.selected)) {
                          return ColorName.p1; // 선택된 상태의 색상
                        }
                        return ColorName.g7; // 선택되지 않은 상태의 색상
                      }),
                    ),
                  ),
                  child: RadioListTile<ReportType>(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    dense: true,
                    visualDensity: const VisualDensity(
                        vertical: -4, horizontal: -4), // 수직 간격 조정
                    title: Text(
                      reportType.text,
                      style: AppTexts.b8.copyWith(color: ColorName.g1),
                    ),
                    value: reportType,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value;
                      });
                      _hideKeyboard();
                    },
                  ),
                );
              }),
              SizedBox(
                height: 12,
              ),
              ReportTextField(
                focusNode: _focusNode,
                controller: _textController,
                backgroundColor: ColorName.b1,
                textColor: ColorName.w1,
                hintText: '신고 내용을 입력해 주세요.',
                hintStyle: AppTexts.b10.copyWith(color: ColorName.g3),
                borderRadius: 16,
                keyboardType: TextInputType.multiline,
                minLines: 4,
                maxLines: 4,
              ),
              const SizedBox(height: 40),
              _buildActionButton(
                context,
                '신고하기',
                _selectedValue != null ? ColorName.p1 : ColorName.g7,
                AppTexts.b7.copyWith(
                    color:
                        _selectedValue != null ? ColorName.w1 : ColorName.g3),
                _onSubmit,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(
    BuildContext context,
    String text,
    Color backgroundColor,
    TextStyle textStyle,
    VoidCallback onPressed,
  ) {
    return GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 18),
          width: double.infinity,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ));
  }
}
