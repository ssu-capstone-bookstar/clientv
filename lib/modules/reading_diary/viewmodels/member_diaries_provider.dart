import 'package:book/modules/reading_diary/model/diary_thumbnail_response.dart';
import 'package:book/modules/reading_diary/repository/reading_diary_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final memberDiariesProvider =
    FutureProvider.family<List<DiaryThumbnail>, int>((ref, memberId) async {
  final repo = ref.watch(readingDiaryRepositoryProvider);
  final response = await repo.getMemberDiaries(memberId);
  return response.data;
});
