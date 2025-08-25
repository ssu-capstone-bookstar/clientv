import 'dart:ui';
import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/common/utils/format_utils.dart';
import 'package:book/gen/assets.gen.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/deep_time/view/widgets/circular_timer.dart';
import 'package:book/modules/deep_time/view/widgets/deep_time_completion_dialog.dart';
import 'package:book/modules/deep_time/view/widgets/timer_character.dart';
import 'package:book/modules/deep_time/view/widgets/timer_controls.dart';
import 'package:book/modules/deep_time/view_model/deep_time_state.dart';
import 'package:book/modules/deep_time/view_model/deep_time_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:book/modules/deep_time/view/widgets/playlist_button.dart';
import 'package:book/modules/deep_time/view_model/playlist_view_model.dart';

class DeepTimeScreen extends ConsumerStatefulWidget {
  const DeepTimeScreen({super.key});

  @override
  ConsumerState<DeepTimeScreen> createState() => _DeepTimeScreenState();
}

class _DeepTimeScreenState extends ConsumerState<DeepTimeScreen> {
  @override
  void initState() {
    super.initState();
    ref.listenManual(selectedMusicProvider, (previous, next) {
      if (next != null) {
        final audioPlayer = ref.read(audioPlayerProvider);
        initAudioSession();
        audioPlayer.setUrl(next.musicUrl);
        audioPlayer.play();
      }
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final audioPlayer = ref.read(audioPlayerProvider);
      if (audioPlayer.playing) {
        audioPlayer.stop();
      }
      ref.read(selectedMusicProvider.notifier).cancel();
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(audioPlayerProvider);
    ref.listen(deepTimeViewModelProvider, (previous, next) async {
      if (next.value?.status == DeepTimeStatus.finished) {
        await ref.read(deepTimeViewModelProvider.notifier).resetTimer();
        if (!context.mounted) return;
        await showDialog(
            barrierDismissible: false,
            context: context,
            builder: (_) => const DeepTimeCompletionDialog());
      }
    });

    final asyncState = ref.watch(deepTimeViewModelProvider);

    return asyncState.when(
      data: (state) => _buildContent(context, ref, state),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, s) => Center(
        child: Text(
          'Error: $e',
          style: const TextStyle(color: ColorName.w1),
        ),
      ),
    );
  }

  Widget _buildContent(
      BuildContext context, WidgetRef ref, DeepTimeState state) {
    final status = state.status;
    final displayDuration =
        status == DeepTimeStatus.running || status == DeepTimeStatus.paused
            ? state.remainingDuration
            : state.settingDuration;

    final circularTimerSize =
        MediaQuery.of(context).size.height > 800.0 ? 272.0 : 250.0;

    return PopScope(
        // followed by modification in lib/modules/home/view/screens/home_screen.dart.
        // if DeepTimeStatus.running -> can't use bottom navigator bar.
        canPop: state.status != DeepTimeStatus.running,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      SizedBox(
                        width: circularTimerSize,
                        height: circularTimerSize,
                        child: Stack(
                          alignment: Alignment.center,
                          clipBehavior: Clip.none,
                          children: [
                            CircularTimer(size: circularTimerSize),
                            _buildTimeMarker('0', const Alignment(0, -0.85)),
                            _buildTimeMarker('15', const Alignment(0.85, 0)),
                            _buildTimeMarker('30', const Alignment(0, 0.85)),
                            _buildTimeMarker('45', const Alignment(-0.85, 0)),
                            TimerCharacter(status: status),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),

                      // time is zero
                      if (displayDuration == Duration.zero) ...[
                        _buildStatusText(status, displayDuration),
                        const SizedBox(height: 20),
                        _buildTodayTotalTime(state.todayTotalSeconds),
                      ],
                      // time is not zero
                      if (state.settingDuration > Duration.zero) ...[
                        const TimerControls(),
                      ],

                      // 00:00 time display
                      _TimerDisplay(
                        status: status,
                        displayDuration: displayDuration,
                        circleSize: circularTimerSize,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: state.settingDuration > Duration.zero ? 20 : 0,
                      bottom: 12.0,
                    ),
                    child: PlaylistButton(),
                  )
                ],
              ),
            )
          ],
        ));
  }

  Widget _buildTimeMarker(String text, Alignment alignment) {
    return Align(
      alignment: alignment,
      child: Text(
        text,
        style: AppTexts.b7.copyWith(color: ColorName.g4),
      ),
    );
  }

  Widget _buildStatusText(DeepTimeStatus status, Duration duration) {
    String text;
    if (duration > Duration.zero) {
      text = ' ';
    } else {
      text = '시간을 돌려 설정해 보세요';
    }

    return SizedBox(
        height: 24,
        child: Text(
          text,
          style: AppTexts.b6.copyWith(color: ColorName.g4),
          textAlign: TextAlign.center,
        ));
  }

  Widget _buildTodayTotalTime(int totalSeconds) {
    final duration = Duration(seconds: totalSeconds);

    // Format to HH:MM:SS
    final hours = duration.inHours.toString().padLeft(2, '0');
    final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    final timeStr = '$hours:$minutes:$seconds';

    return Container(
      height: 31,
      width: 156,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: ColorName.dim3,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '오늘의 누적 시간',
            style: AppTexts.b11.copyWith(color: ColorName.g2),
          ),
          const SizedBox(width: 3),
          Text(
            timeStr,
            style: AppTexts.b7.copyWith(color: ColorName.p1),
          ),
        ],
      ),
    );
  }
}

class _TimerDisplay extends StatelessWidget {
  const _TimerDisplay(
      {required this.status,
      required this.displayDuration,
      required this.circleSize});

  final DeepTimeStatus status;
  final Duration displayDuration;
  final double circleSize;

  @override
  Widget build(BuildContext context) {
    final timerTextStyle = TextStyle(
      fontFamily: 'Pretendard',
      fontWeight: FontWeight.w900, // Black weight
      fontSize: 50,
      color: ColorName.p1,
    );

    final timerText = Text(
      FormatUtils.formatDuration(displayDuration),
      style: timerTextStyle,
    );

    if (status != DeepTimeStatus.running) {
      return SizedBox(
        height: circleSize < 270 ? 65 : 90,
        child: FittedBox(
          fit: BoxFit.cover,
          child: Text(
            FormatUtils.formatDuration(displayDuration),
            style: timerTextStyle.copyWith(
              color: ColorName.g5,
            ),
          ),
        ),
      );
    }

    return SizedBox(
      height: circleSize < 270 ? 85 : 120,
      width: 250,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 120, sigmaY: 120),
            child: Container(
              decoration: const BoxDecoration(
                // 아래에서 위로 점점 연해지는 효과
                gradient: LinearGradient(
                  // 시작 색상(진하게) -> 끝 색상(연하게)
                  colors: [
                    Color.fromRGBO(122, 101, 255, 0.7), // 아래쪽 (진한 보라)
                    Color.fromRGBO(122, 101, 255, 0.2), // 위쪽 (연한 보라)
                  ],
                  // 그라데이션 방향: 아래에서 위로
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          SizedBox(
            height: circleSize < 270 ? 65 : 90,
            child: FittedBox(fit: BoxFit.cover, child: timerText),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Assets.icons.icDeeptypeStickerClock.svg(width: 40),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Assets.icons.icDeeptypeStickerBook.svg(width: 35),
          ),
          Positioned(
            bottom: 0,
            right: -20,
            child: Assets.icons.icDeeptypeStickerCloud.svg(width: 40),
          ),
        ],
      ),
    );
  }
}
