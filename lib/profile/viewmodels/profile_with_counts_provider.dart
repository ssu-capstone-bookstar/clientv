import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:book/profile/services/profile_repository.dart';
import 'package:book/profile/models/profile_with_counts.dart';

final profileWithCountsProvider =
    FutureProvider.family<ProfileWithCounts, int>((ref, memberId) async {
  final repo = ref.watch(profileRepositoryProvider);
  final response = await repo.getProfileById(memberId.toString());
  return response.data;
});
