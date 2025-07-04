import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:book/reading_diary/services/reading_diary_repository.dart';
import 'package:book/reading_diary/models/diary_response.dart';

final memberDiariesProvider =
    FutureProvider.family<List<DiaryResponse>, int>((ref, memberId) async {
  final repo = ref.watch(readingDiaryRepositoryProvider);
  final response = await repo.getMemberDiaries(memberId);
  return response.data;
});
