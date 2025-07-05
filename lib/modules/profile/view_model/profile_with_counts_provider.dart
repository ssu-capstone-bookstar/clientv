import 'package:book/modules/profile/model/profile_with_counts.dart';
import 'package:book/modules/profile/repository/profile_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileWithCountsProvider =
    FutureProvider.family<ProfileWithCounts, int>((ref, memberId) async {
  final repo = ref.watch(profileRepositoryProvider);
  final response = await repo.getProfileById(memberId.toString());
  return response.data;
});
