import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../auth/view_model/auth_state.dart';
import '../../auth/view_model/auth_view_model.dart';
import '../model/profile_response.dart';
import '../model/update_profile_request.dart';
import '../repository/profile_repository.dart';

class ProfileNotifier extends AsyncNotifier<ProfileResponse?> {
  final ProfileRepository _repository;

  ProfileNotifier(this._repository);

  @override
  Future<ProfileResponse?> build() async {
    final authState = ref.watch(authViewModelProvider).value;
    if (authState is! AuthSuccess) return null;
    final response = await _repository.getProfileById(authState.memberId.toString());
    final profile = response.data;
    // ProfileWithCounts -> ProfileResponse 변환
    return ProfileResponse(
      memberId: profile.memberId,
      nickName: profile.nickName,
      profileImageUrl: profile.profileImageUrl,
      introduction: profile.introduction,
    );
  }

  Future<void> updateProfile(ProfileResponse newProfile) async {
    state = const AsyncValue.loading();
    try {
      final request = UpdateProfileRequest(
        nickName: newProfile.nickName,
        profileImageUrl: newProfile.profileImageUrl,
        introduction: newProfile.introduction,
      );
      final response = await _repository.updateMyProfile(request);
      final updated = response.data;
      state = AsyncValue.data(updated);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

final profileProvider = AsyncNotifierProvider<ProfileNotifier, ProfileResponse?>(
  () => ProfileNotifier(
    // 의존성 주입: profileRepositoryProvider를 읽어서 전달
    ProviderContainer().read(profileRepositoryProvider),
  ),
);
