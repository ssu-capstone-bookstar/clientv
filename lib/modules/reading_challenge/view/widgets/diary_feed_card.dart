import 'package:book/modules/book_log/view/widgets/feed_card.dart';
import 'package:book/modules/reading_diary/model/diary_feed_response.dart';
import 'package:book/modules/reading_diary/model/diary_response.dart';
import 'package:book/modules/reading_diary/model/diary_image_response.dart';
import 'package:flutter/material.dart';

class DiaryFeedCard extends StatelessWidget {
  final DiaryFeedResponse feed;
  final Function onLike;
  final Function onMessage;

  const DiaryFeedCard({
    super.key,
    required this.feed,
    required this.onLike,
    required this.onMessage,
  });

  @override
  Widget build(BuildContext context) {
    // DiaryFeedResponse를 DiaryResponse로 변환
    final adaptedFeed = DiaryResponse(
      diaryId: feed.diaryId,
      content: feed.content,
      createdDate: feed.createdDate.toIso8601String(),
      memberId: feed.memberId,
      nickname: feed.nickname,
      profileImageUrl: feed.profileImageUrl,
      bookId: feed.bookId,
      bookTitle: feed.bookTitle,
      bookAuthor: feed.bookAuthor,
      images: feed.images
          .map((img) => DiaryImageResponse(
                diaryId: img.diaryId,
                imageId: img.imageId,
                imageUrl: img.imageUrl,
                sequence: img.sequence,
              ))
          .toList(),
      likeCount: feed.likeCount,
      commentCount: feed.commentCount,
      viewCount: feed.viewCount,
      liked: feed.liked,
    );

    return FeedCard(
      feed: adaptedFeed,
      onLike: onLike,
      onMessage: onMessage,
    );
  }
}
