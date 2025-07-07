import 'package:freezed_annotation/freezed_annotation.dart';

part 'deep_time_state.freezed.dart';

enum DeepTimeStatus {
  initial, // 초기 상태 (시간 설정 전)
  setting, // 시간 설정 중
  ready, // 시간 설정 완료, 타이머 시작 전
  running, // 타이머 작동 중
  paused, // 타이머 일시정지
  finished, // 타이머 완료
}

@freezed
abstract class DeepTimeState with _$DeepTimeState {
  const factory DeepTimeState({
    @Default(DeepTimeStatus.initial) DeepTimeStatus status,
    @Default(Duration.zero) Duration settingDuration, // 사용자가 설정 중인 시간
    @Default(Duration.zero) Duration remainingDuration, // 남은 시간
    @Default(0) int todayTotalSeconds, // 오늘 누적 시간
    String? errorMessage,
  }) = _DeepTimeState;
}
