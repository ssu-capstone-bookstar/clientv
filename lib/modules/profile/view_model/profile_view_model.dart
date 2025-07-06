import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../auth/view_model/auth_state.dart';
import '../../auth/view_model/auth_view_model.dart';
import '../model/profile_with_counts.dart';
import '../model/update_profile_request.dart';
import '../repository/profile_repository.dart';

class ProfileNotifier extends FamilyAsyncNotifier<ProfileWithCounts?, int?> {
  @override
  Future<ProfileWithCounts?> build(int? memberId) async {
    // memberId가 제공되면 해당 사용자의 프로필, 아니면 현재 로그인한 사용자
    final targetMemberId = memberId ?? _getCurrentMemberId();
    if (targetMemberId == null) return null;

    final repository = ref.watch(profileRepositoryProvider);
    final response = await repository.getProfileById(targetMemberId.toString());
    return response.data;
  }

  int? _getCurrentMemberId() {
    final authState = ref.watch(authViewModelProvider).value;
    if (authState is! AuthSuccess) return null;
    return authState.memberId;
  }

  Future<void> updateProfile(ProfileWithCounts newProfile) async {
    state = const AsyncValue.loading();
    try {
      final repository = ref.read(profileRepositoryProvider);
      final request = UpdateProfileRequest(
        nickName: newProfile.nickName,
        profileImageUrl: newProfile.profileImageUrl,
        introduction: newProfile.introduction,
      );
      await repository.updateMyProfile(request);
      // 업데이트 후 프로필 다시 로드
      await build(arg);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

final profileProvider =
    AsyncNotifierProvider.family<ProfileNotifier, ProfileWithCounts?, int?>(
  () => ProfileNotifier(),
);
