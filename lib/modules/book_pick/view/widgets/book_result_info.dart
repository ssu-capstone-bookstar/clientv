import 'package:book/gen/assets.gen.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/book/model/book_detail_response.dart';
import 'package:book/modules/book_pick/view/widgets/book_icon_value_label.dart';
import 'package:flutter/material.dart';

import '../../../../common/theme/app_style.dart';
import 'book_cover_image.dart';
import 'book_labeled_text.dart';

class BookResultInfo extends StatelessWidget {
  const BookResultInfo({
    super.key,
    required this.book,
    required this.onItemTap,
  });

  final BookDetailResponse book;
  final Function() onItemTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: onItemTap,
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10),
                width: 250,
                height: 180,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 16.0,
                  children: [
                    Expanded(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: BookCoverImage(
                              imageUrl: book.imageUrl, tag: '${book.id}')),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 12.0,
                        children: [
                          _buildInfoSection(),
                          _buildBookStatsSection(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              _buildDividerSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          book.title,
          style: AppTexts.b3.copyWith(overflow: TextOverflow.ellipsis),
          maxLines: 2,
        ),
        const SizedBox(height: 12.0),
        BookLabeledText(label: '작가', value: book.author),
        BookLabeledText(label: '출판사', value: book.publisher),
        BookLabeledText(label: '출판연도', value: book.publishedDate),
      ],
    );
  }

  Widget _buildBookStatsSection() {
    return Row(
      spacing: 8,
      children: [
        BookIconValueLabel(
          icon: Assets.icons.icStar.svg(width: 12.0, height: 12.0),
          value: book.star.toString(),
          valueStyle: AppTexts.b8.copyWith(color: ColorName.p1),
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          decoration: BoxDecoration(
            color: ColorName.g7,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: ColorName.g6),
          ),
        ),
        // BookIconValueLabel(
        //   icon: Assets.icons.icAddPick.svg(width: 12.0, height: 12.0),
        //   value: book..toString(),
        //   valueStyle: AppTexts.b8.copyWith(color: ColorName.p1),
        //   padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        //   decoration: BoxDecoration(
        //     color: ColorName.g7,
        //     borderRadius: BorderRadius.circular(20),
        //     border: Border.all(color: ColorName.g6),
        //   ),
        // ),
      ],
    );
  }

  Widget _buildDividerSection() {
    return Padding(
      padding: EdgeInsets.only(top: 8.0, bottom: 35),
      child: Divider(
        thickness: 7,
        color: AppColors.DIVIDER_COLOR,
        radius: BorderRadius.circular(5.0),
      ),
    );
  }
}
