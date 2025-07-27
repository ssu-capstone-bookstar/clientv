import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:book/gen/assets.gen.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/modules/deep_time/view_model/playlist_view_model.dart';

class MusicPlayerWidget extends ConsumerStatefulWidget {
  const MusicPlayerWidget({super.key});

  @override
  ConsumerState<MusicPlayerWidget> createState() => _MusicPlayerWidgetState();
}

class _MusicPlayerWidgetState extends ConsumerState<MusicPlayerWidget> {
  StreamSubscription<Duration?>? _durationSubscription;
  StreamSubscription<Duration>? _positionSubscription;
  StreamSubscription<PlayerState>? _playerStateSubscription;

  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _subscribeToPlayerStreams();
    });
  }

  void _subscribeToPlayerStreams() {
    final player = ref.read(audioPlayerProvider);
    _durationSubscription = player.durationStream.listen((d) {
      if (d != null && mounted) setState(() => _duration = d);
    });
    _positionSubscription = player.positionStream.listen((p) {
      if (mounted) setState(() => _position = p);
    });
    _playerStateSubscription = player.playerStateStream.listen((state) {
      if (mounted) setState(() => _isPlaying = state.playing);
    });
  }

  @override
  void dispose() {
    _durationSubscription?.cancel();
    _positionSubscription?.cancel();
    _playerStateSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final audioPlayer = ref.watch(audioPlayerProvider);
    final selectedMusic = ref.watch(selectedMusicProvider);
    final isMusicSelected = selectedMusic != null;

    final decoration = isMusicSelected
        ? BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: ColorName.p4),
            gradient: const RadialGradient(
              center: Alignment(0.45, -0.95),
              radius: 3,
              colors: [
                Color.fromRGBO(119, 93, 255, 1),
                Color.fromRGBO(46, 46, 56, 1),
              ],
            ),
          )
        : BoxDecoration(
            color: ColorName.g7,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: ColorName.g6),
          );

    return Container(
      width: 343,
      height: 70,
      decoration: decoration,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isMusicSelected ? selectedMusic!.title : "현재 재생중인 곡이 없어요.",
              style: isMusicSelected
                  ? AppTexts.b9.copyWith(color: ColorName.w1)
                  : AppTexts.b10.copyWith(color: ColorName.g2),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 6),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    if (isMusicSelected) {
                      _isPlaying ? audioPlayer.pause() : audioPlayer.play();
                    }
                  },
                  child: _isPlaying
                      ? Assets.icons.icPlaylistStop.svg(
                          width: 24,
                          height: 24,
                          //colorFilter: _isPlaying ? ColorFilter.mode(ColorName.p1, BlendMode.srcIn) : null,
                        )
                      : Assets.icons.icPlaylistPlay.svg(
                          width: 24,
                          height: 24,
                          colorFilter: isMusicSelected
                              ? ColorFilter.mode(ColorName.p1, BlendMode.srcIn)
                              : null,
                        ),
                ),
                const SizedBox(width: 8),
                Text(
                  _formatDuration(_duration - _position),
                  style: AppTexts.b11.copyWith(color: ColorName.g3),
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 2,
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 5),
                      overlayShape: SliderComponentShape.noOverlay,
                    ),
                    child: Slider(
                      min: 0,
                      max: _duration.inSeconds.toDouble(),
                      value: _position.inSeconds
                          .clamp(0, _duration.inSeconds)
                          .toDouble(),
                      activeColor: const Color.fromRGBO(137, 114, 255, 1),
                      inactiveColor: Colors.black,
                      onChanged: isMusicSelected
                          ? (value) {
                              audioPlayer
                                  .seek(Duration(seconds: value.toInt()));
                            }
                          : null,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _formatDuration(Duration d) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    return "${twoDigits(d.inMinutes.remainder(60))}:${twoDigits(d.inSeconds.remainder(60))}";
  }
}
