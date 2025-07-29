import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/book_pick/model/like_book_response.dart';
import 'package:flutter/material.dart';

class BookPickItem extends StatelessWidget {
  const BookPickItem({super.key, required this.item, required this.onItemTap});

  final LikeBookResponse item;
  final Function() onItemTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onItemTap,
      child: SizedBox(
        width: 90,
        height: 135,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Stack(
              children: [
                Image.network(item.bookCover, fit: BoxFit.cover),
                Padding(
                  padding: const EdgeInsets.only(left: 6, bottom: 6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 90,
                        child: Text(
                          item.title,
                          style: AppTexts.b11.copyWith(color: ColorName.w1),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
