import 'dart:async';

import 'package:book/modules/deep_time/model/timer_request.dart';
import 'package:book/modules/deep_time/repository/deep_time_repository.dart';
import 'package:book/modules/deep_time/view_model/deep_time_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'deep_time_view_model.g.dart';

@riverpod
class DeepTimeViewModel extends _$DeepTimeViewModel {
  Timer? _timer;

  @override
  Future<DeepTimeState> build() async {
    final repo = ref.read(deepTimeRepositoryProvider);
    
    // Notifier가 dispose될 때 타이머를 취소합니다.
    ref.onDispose(() {
      _timer?.cancel();
    });

    final response = await repo.getTodayTimer();
    return DeepTimeState(todayTotalSeconds: response.data.totalSeconds);
  }

  // 오늘의 누적 시간 불러오기
  Future<void> _fetchTodayTimer() async {
    final originalState = state.value;
    if (originalState == null) return;

    try {
      final repo = ref.read(deepTimeRepositoryProvider);
      final response = await repo.getTodayTimer();
      state = AsyncData(
        originalState.copyWith(
            todayTotalSeconds: response.data.totalSeconds),
      );
    } catch (e) {
      state = AsyncData(originalState.copyWith(errorMessage: e.toString()));
    }
  }

  // 사용자가 타이머 시간 설정
  void setDuration(Duration duration) {
    if (state.value?.status == DeepTimeStatus.running) return;

    final newState = state.value?.copyWith(
      settingDuration: duration,
      remainingDuration: duration,
      status: duration == Duration.zero ? DeepTimeStatus.initial : DeepTimeStatus.ready,
    );
    if(newState != null){
       state = AsyncData(newState);
    }
  }

  // 타이머 시작
  void startTimer() {
    if (state.value?.status != DeepTimeStatus.ready &&
        state.value?.status != DeepTimeStatus.paused) {
      return;
    }

    state = AsyncData(state.value!.copyWith(status: DeepTimeStatus.running));
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final currentVal = state.value;
      if(currentVal == null) {
        timer.cancel();
        return;
      }

      final remaining = currentVal.remainingDuration;
      if (remaining.inSeconds > 0) {
        state = AsyncData(
          currentVal.copyWith(
            remainingDuration: remaining - const Duration(seconds: 1),
          ),
        );
      } else {
        timer.cancel();
        _postTimerDuration(); // 타이머 종료 후 서버에 시간 기록
        state = AsyncData(currentVal.copyWith(status: DeepTimeStatus.finished));
      }
    });
  }

  // 타이머 일시정지
  void pauseTimer() {
    if (state.value?.status != DeepTimeStatus.running) return;
    _timer?.cancel();
    _postTimerDuration();
    state = AsyncData(state.value!.copyWith(status: DeepTimeStatus.paused));
  }

  // 타이머 리셋 (X 버튼 등)
  Future<void> resetTimer() async {
    _timer?.cancel();
    // 리셋 시에는 현재까지의 시간을 기록하고 상태를 초기화합니다.
    if (state.value != null && state.value!.settingDuration.inSeconds > 0) {
      await _postTimerDuration();
    }
    
    final currentVal = state.value;
    if(currentVal != null) {
       state = AsyncData(
        currentVal.copyWith(
          status: DeepTimeStatus.initial,
          remainingDuration: Duration.zero,
          settingDuration: Duration.zero,
        ),
      );
    }
  }

  // 서버에 시간 기록
  Future<void> _postTimerDuration() async {
    final currentVal = state.value;
    if(currentVal == null || currentVal.settingDuration.inSeconds == 0) return;
    
    try {
      final repo = ref.read(deepTimeRepositoryProvider);
      final recordedSeconds = currentVal.settingDuration.inSeconds -
          currentVal.remainingDuration.inSeconds;

      // settingDuration을 초기화해서 중복 기록 방지
      final newState = currentVal.copyWith(settingDuration: Duration.zero, remainingDuration: Duration.zero);
      state = AsyncData(newState);

      if (recordedSeconds > 0) {
        await repo.postTimer(TimerRequest(seconds: recordedSeconds));
        // 성공 후 오늘 누적 시간 다시 불러오기
        await _fetchTodayTimer();
      }
    } catch (e) {
      final originalState = state.value;
      if (originalState != null) {
         state = AsyncData(originalState.copyWith(errorMessage: e.toString()));
      }
    }
  }
} 