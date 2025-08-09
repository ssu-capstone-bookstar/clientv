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
  bool _isDragging = false;

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
      if (mounted && !_isDragging) setState(() => _position = p);
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

    final BoxDecoration baseDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(width: 1, color: ColorName.p4),
    );

    final BoxDecoration defaultDecoration = BoxDecoration(
      color: ColorName.g7,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(width: 1, color: ColorName.g6),
    );

    return Container(
      width: 343,
      height: 70,
      decoration: isMusicSelected ? baseDecoration : defaultDecoration,
      child: isMusicSelected
          ? Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF1F1F25),
                          Color(0xFF1F1F25),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const RadialGradient(
                        center: Alignment(-0.7572, -0.9476),
                        radius: 2.31,
                        colors: [
                          Color(0x4D2E2E38),
                          Color(0x4D775DFF),
                        ],
                        stops: [0.0, 1.0],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        selectedMusic!.title,
                        style: AppTexts.b9.copyWith(color: ColorName.w1),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              _isPlaying
                                  ? audioPlayer.pause()
                                  : audioPlayer.play();
                            },
                            child: _isPlaying
                                ? Assets.icons.icPlaylistStop
                                    .svg(width: 24, height: 24)
                                : Assets.icons.icPlaylistPlay.svg(
                                    width: 24,
                                    height: 24,
                                    colorFilter: ColorFilter.mode(
                                        ColorName.p1, BlendMode.srcIn),
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
                                thumbShape: const RoundSliderThumbShape(
                                    enabledThumbRadius: 5),
                                overlayShape: SliderComponentShape.noOverlay,
                              ),
                              child: Slider(
                                min: 0,
                                max: _duration.inMilliseconds.toDouble(),
                                value: _position.inMilliseconds
                                    .clamp(0, _duration.inMilliseconds)
                                    .toDouble(),
                                activeColor:
                                    const Color.fromRGBO(137, 114, 255, 1),
                                inactiveColor: Colors.black,
                                onChangeStart: (value) {
                                  setState(() {
                                    _isDragging = true;
                                  });
                                },
                                onChangeEnd: (value) {
                                  audioPlayer.seek(
                                      Duration(milliseconds: value.round()));
                                  setState(() {
                                    _isDragging = false;
                                  });
                                },
                                onChanged: (value) {
                                  if (_isDragging) {
                                    setState(() {
                                      _position =
                                          Duration(milliseconds: value.round());
                                    });
                                  }
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "현재 재생중인 곡이 없어요.",
                    style: AppTexts.b10.copyWith(color: ColorName.g2),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Assets.icons.icPlaylistPlay.svg(width: 24, height: 24),
                      const SizedBox(width: 8),
                      Text(
                        _formatDuration(Duration.zero),
                        style: AppTexts.b11.copyWith(color: ColorName.g3),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            trackHeight: 2,
                            thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 5),
                            overlayShape: SliderComponentShape.noOverlay,
                          ),
                          child: Slider(
                            min: 0,
                            max: 0,
                            value: 0,
                            activeColor: Colors.black,
                            onChanged: null,
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
