import 'dart:async';

import 'package:book/modules/auth/view_model/auth_state.dart';
import 'package:book/modules/auth/view_model/auth_view_model.dart';
import 'package:book/modules/follow/repository/follow_repository.dart';
import 'package:book/modules/follow/state/follow_info_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'follow_info_view_model.g.dart';

@riverpod
class FollowInfoViewModel extends _$FollowInfoViewModel {
  late final FollowRepository _followRepository;

  @override
  Future<FollowInfoState> build() async {
    _followRepository = ref.watch(followRepositoryProvider);
    return _refreshInfo();
  }

  int? _getCurrentMemberId() {
    final authState = ref.watch(authViewModelProvider).value;
    if (authState is! AuthSuccess) return null;
    return authState.memberId;
  }

  Future<FollowInfoState> _refreshInfo() async {
    final currentMemberId = _getCurrentMemberId();
    if (currentMemberId == null) {
      return const FollowInfoState();
    }

    final followingResponse = await _followRepository.getFollowing(currentMemberId);
    final followersResponse = await _followRepository.getFollowers(currentMemberId);
    final result = FollowInfoState(
      followers: followersResponse.data,
      following: followingResponse.data,
      currentMemberId: currentMemberId,
    );
    state = AsyncValue.data(result);
    return result;
  }

  Future<void> follow(int memberId) async {
    await _followRepository.follow(memberId);
    await _refreshInfo();
  }

  Future<void> unfollow(int memberId) async {
    await _followRepository.unfollow(memberId);
    await _refreshInfo();
  }
}
