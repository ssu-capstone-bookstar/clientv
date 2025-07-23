import 'package:book/gen/assets.gen.dart';
import 'package:book/modules/reading_diary/model/diary_response.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class FeedCard extends ConsumerStatefulWidget {
  const FeedCard(
      {super.key,
      required this.feed,
      required this.loadingLike,
      required this.onLike});
  final DiaryResponse feed;
  final bool loadingLike;
  final Function onLike;

  @override
  ConsumerState<FeedCard> createState() => _FeedCardState();
}

class _FeedCardState extends ConsumerState<FeedCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    DateTime dt = DateTime.parse(widget.feed.createdDate);
    String createdAt = DateFormat('yyyy/MM/dd').format(dt);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 32,
                    height: 32,
                    child: CircleAvatar(
                      backgroundColor: ColorName.g7,
                      backgroundImage: widget.feed.profileImageUrl.isNotEmpty
                          ? NetworkImage(widget.feed.profileImageUrl)
                          : null,
                      child: widget.feed.profileImageUrl.isEmpty
                          ? const Icon(Icons.person,
                              size: 40, color: ColorName.g5)
                          : null,
                    ),
                  ),
                  const SizedBox(height: 12),
                  // 닉네임
                  Center(
                    child: Text(
                      "@${widget.feed.nickname}",
                      style: AppTexts.b7.copyWith(color: ColorName.b1),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Assets.icons.icMenuMore.svg(),
            ],
          ),
        ),
        AspectRatio(
          aspectRatio: 1,
          child: PageView.builder(
            itemCount: widget.feed.images.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: CachedNetworkImage(
                  imageUrl: widget.feed.images[index].imageUrl,
                  fit: BoxFit.contain,
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => widget.onLike(),
                      child: widget.loadingLike
                          ? SizedBox(
                              width: 24,
                              height: 24,
                              child: CircularProgressIndicator(
                                color: ColorName.p1,
                              ),
                            )
                          : !widget.feed.liked
                              ? Assets.icons.icHeart.svg()
                              : Assets.icons.icHeartFilled.svg(),
                    ),
                    const SizedBox(width: 3),
                    Text(
                      widget.feed.likeCount.toString(),
                      style: AppTexts.b10.copyWith(color: ColorName.w1),
                    ),
                    const SizedBox(width: 6),
                    Assets.icons.icMessage.svg(),
                    const SizedBox(width: 3),
                    Text(
                      widget.feed.commentCount.toString(),
                      style: AppTexts.b10.copyWith(color: ColorName.w1),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: ColorName.g7,
          height: 0,
          thickness: 1,
          indent: 16,
          endIndent: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      widget.feed.bookTitle,
                      style: AppTexts.b7.copyWith(color: ColorName.p1),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  // const SizedBox(width: 3),
                  // StarBadge(rating: widget.feed.), // TODO: 실제 별점 데이터로 교체
                  Text(
                    createdAt,
                    style: AppTexts.b10.copyWith(color: ColorName.g3),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.feed.bookAuthor,
                      style: AppTexts.b11.copyWith(color: ColorName.p6),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                widget.feed.content,
                maxLines: isExpanded ? null : 10,
                overflow: isExpanded ? null : TextOverflow.ellipsis,
                style: AppTexts.b10.copyWith(color: ColorName.w1),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: Text(
                  isExpanded ? '닫기' : '더 보기',
                  style: AppTexts.b11.copyWith(color: ColorName.g3).copyWith(
                        decoration: TextDecoration.underline,
                        decorationColor: ColorName.g3,
                        decorationThickness: 1,
                      ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
