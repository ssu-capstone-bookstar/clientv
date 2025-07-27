import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../../gen/colors.gen.dart';
import '../../../../common/theme/app_style.dart';
import '../../model/book_overview_response.dart';
import '../../../book_pick/view/widgets/book_labeled_text.dart';
import '../../../book_pick/view/widgets/book_icon_value_label.dart';

class BookInfoWidget extends StatelessWidget {
  const BookInfoWidget({
    super.key,
    required this.book,
  });

  final BookOverviewResponse book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.SCREEN_BODY_PADDING.copyWith(top: 0),
      child: Container(
        height: 220,
        width: double.infinity,
        padding: EdgeInsets.only(top: 21, bottom: 21),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: ColorName.g6, width: 1),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBookCover(),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTitleSection(),
                      const SizedBox(height: 12),
                      _buildInfoSection(),
                    ],
                  ),
                  _buildStatsSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBookCover() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: const Color(0xB251515C),
            blurRadius: 46,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: CachedNetworkImage(
          imageUrl: book.cover,
          width: 119,
          height: 176.53846740722656,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildTitleSection() {
    return Text(
      book.title,
      style: AppTexts.b3.copyWith(color: ColorName.w1),
    );
  }

  Widget _buildInfoSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BookLabeledText(label: '작가', value: book.author),
        BookLabeledText(label: '출판사', value: book.publisher),
        BookLabeledText(label: '출판연도', value: book.publishedDate),
      ],
    );
  }

  Widget _buildStatsSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        BookIconValueLabel(
          icon: Icon(Icons.star, color: ColorName.p1, size: 12.0),
          value: book.star.toString(),
          valueStyle: AppTexts.b8.copyWith(color: ColorName.p1),
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          decoration: BoxDecoration(
            color: ColorName.g7,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: ColorName.g6),
          ),
        ),
        const SizedBox(width: 8),
        BookIconValueLabel(
          icon: Icon(Icons.article_outlined, color: ColorName.p1, size: 12.0),
          value: book.readingDiaryCount.toString(),
          valueStyle: AppTexts.b8.copyWith(color: ColorName.p1),
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          decoration: BoxDecoration(
            color: ColorName.g7,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: ColorName.g6),
          ),
        ),
      ],
    );
  }
}
