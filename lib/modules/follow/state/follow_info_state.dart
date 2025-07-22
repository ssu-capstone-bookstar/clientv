import 'package:book/modules/follow/model/follow_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'follow_info_state.freezed.dart';

@freezed
abstract class FollowInfoState with _$FollowInfoState {
  const factory FollowInfoState({
    /// currentMemberId가 팔로우한 사람들
    @Default([]) List<FollowResponse> following,
    /// currentMemberId를 팔로우한 사람들
    @Default([]) List<FollowResponse> followers,
    @Default(-1) int currentMemberId,
  }) = _FollowInfoState;
}