import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:book/modules/profile/view_model/profile_view_model.dart';
import 'package:book/modules/reading_diary/model/diary_response.dart';
import 'package:book/modules/reading_diary/repository/reading_diary_repository.dart';
import 'package:book/modules/profile/model/profile_with_counts.dart';

// Provider for profile (delegates to profileProvider)
final bookLogProfileProvider =
    FutureProvider.family<ProfileWithCounts, int>((ref, memberId) async {
  final profile = await ref.watch(profileProvider(memberId).future);
  return profile ?? const ProfileWithCounts();
});

// Provider for diaries (delegates to reading_diary repository)
final bookLogDiariesProvider =
    FutureProvider.family<List<DiaryResponse>, int>((ref, memberId) async {
  final repo = ref.watch(readingDiaryRepositoryProvider);
  final response = await repo.getMemberDiaries(memberId);
  return response.data;
});
