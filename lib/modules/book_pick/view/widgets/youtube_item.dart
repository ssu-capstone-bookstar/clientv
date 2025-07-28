import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/book_pick/model/youtube_recommend_response.dart';
import 'package:flutter/material.dart';

class YoutubeItem extends StatelessWidget {
  const YoutubeItem({super.key, required this.item, required this.onItemTap});

  final YoutubeRecommendResponse item;
  final Function() onItemTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onItemTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(item.thumbnailUrl, fit: BoxFit.cover),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 160,
                    child: Text(
                      item.title,
                      style: AppTexts.b5.copyWith(color: ColorName.w1),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: ColorName.g7,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: Text(
                            "유튜브",
                            style: AppTexts.cap1.copyWith(color: ColorName.p1),
                          ),
                        ),
                      ),
                      SizedBox(width: 6),
                      Text(item.channelName,
                          style: AppTexts.b11.copyWith(color: ColorName.g2)),
                    ],
                  )
                  // Text(
                  //   item.channelName,
                  //   style: const TextStyle(fontSize: 16, color: Colors.white),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
