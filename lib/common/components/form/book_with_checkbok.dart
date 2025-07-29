// BookWithCheckbox 사용 예시:
//
// bool isChecked = false;
// BookWithCheckbox(
//   coverUrl: 'https://example.com/cover.jpg',
//   title: '도서명',
//   publisher: '출판사',
//   publishedDate: '2025. 05. 26',
//   checked: isChecked,
//   onChanged: (v) => setState(() => isChecked = v),
// )
//
// *참고
// body에 app_pading 있으면 없애줄 것
// padding: AppPaddings.SCREEN_BODY_PADDING.copyWith(left: 0, right: 0)
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../gen/colors.gen.dart';
import '../../theme/style/app_texts.dart';
import 'checkbox_1.dart';

class BookWithCheckbox extends StatelessWidget {
  final String thumbnailUrl;
  final String title;
  final String author;
  final String lastReadAt;
  final bool checked;
  final ValueChanged<bool> onChanged;
  final bool enabled;

  const BookWithCheckbox({
    super.key,
    required this.thumbnailUrl,
    required this.title,
    required this.author,
    required this.lastReadAt,
    required this.checked,
    required this.onChanged,
    this.enabled = true,
  });

  String _formatDate(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
    } catch (e) {
      return dateString;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: ColorName.g7, width: 1),
        ),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 17, top: 12, bottom: 12, right: 17),
        child: SizedBox(
          width: double.infinity,
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Book cover + info
              Row(
                children: [
                  // Book cover
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      color: ColorName.g7,
                      borderRadius: BorderRadius.circular(3.6),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(3.6),
                      child: CachedNetworkImage(
                        imageUrl: thumbnailUrl,
                        fit: BoxFit.cover,
                        errorWidget: (context, url, error) => Container(
                          color: ColorName.g7,
                          child: const Icon(Icons.image_not_supported,
                              color: ColorName.g3, size: 32),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  // Book info
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 145,
                    height: 62,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 21,
                          child: Text(
                            title,
                            style: AppTexts.b5.copyWith(color: ColorName.w1),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(height: 3),
                        SizedBox(
                          width: 85,
                          height: 38,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 85,
                                height: 19,
                                child: Text(
                                  author,
                                  style: AppTexts.b10
                                      .copyWith(color: ColorName.g3),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(
                                width: 85,
                                height: 19,
                                child: Text(
                                  '~${_formatDate(lastReadAt)}',
                                  style: AppTexts.b10
                                      .copyWith(color: ColorName.g3),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Checkbox
              CheckBox1(
                value: checked,
                onChanged: enabled ? onChanged : (_) {},
                enabled: enabled,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
