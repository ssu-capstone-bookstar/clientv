import 'package:book/gen/assets.gen.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:book/common/components/button/cta_button_l1.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/modules/deep_time/view/widgets/playlist_music_player_button.dart';
import 'package:book/modules/deep_time/view_model/playlist_view_model.dart';
import 'package:book/modules/deep_time/model/music_list_response.dart';
import 'package:audio_session/audio_session.dart';

Future<void> initAudioSession() async {
  final session = await AudioSession.instance;
  await session.configure(AudioSessionConfiguration.music());
}

class PlaylistButton extends ConsumerWidget {
  const PlaylistButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<MusicItem?>(selectedMusicProvider, (previous, next) {
      if (next != null) {
        final audioPlayer = ref.read(audioPlayerProvider);
        initAudioSession();
        audioPlayer.setUrl(next.musicUrl);
        audioPlayer.play();
      }
    });

    return CtaButtonL1(
      text: '플레이 리스트',
      onPressed: () async {
        await showModalBottomSheet(
          useSafeArea: true,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          useRootNavigator: true,
          context: context,
          builder: (context) {
            return showBottom(context);
          },
        );

        ref.read(selectedMusicProvider.notifier).state = null;
      },
    );
  }

  Widget showBottom(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorName.b1,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: 568,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: SizedBox(
              width: 30,
              height: 30,
              child: IconButton(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.zero,
                iconSize: 24,
                icon: const BackButton(color: ColorName.g3),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("플레이 리스트", style: AppTexts.b3),
                const SizedBox(height: 16),
                // SearchField(context),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
            child: Divider(),
          ),
          const SizedBox(height: 8),
          Consumer(
            builder: (context, ref, child) {
              final playlist = ref.watch(playlistProvider);
              final selectedMusic = ref.watch(selectedMusicProvider);

              return SizedBox(
                height: 286,
                child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      const Divider(height: 1, color: ColorName.g7),
                  shrinkWrap: true,
                  itemCount: playlist.length,
                  itemBuilder: (context, index) {
                    final music = playlist[index];
                    final isSelected = selectedMusic?.id == music.id;
                    return MusicInfo(
                      context: context,
                      music: music,
                      isSelected: isSelected,
                    );
                  },
                ),
              );
            },
          ),
          const SizedBox(height: 12),
          const Center(child: MusicPlayerWidget()),
        ],
      ),
    );
  }

  Widget SearchField(BuildContext context) {
    // TODO: not used yet. 음악 갯수적어서 필요없다 판단하심
    return Container(
      width: 342,
      height: 48,
      decoration: BoxDecoration(
        color: ColorName.g7,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        border:
            Border.all(width: 1, color: const Color.fromRGBO(54, 54, 59, 1)),
      ),
      child: Center(
        child: TextField(
          showCursor: false,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Assets.icons.icQuestionMark.svg(width: 18, height: 15),
            ),
            suffixIconConstraints:
                const BoxConstraints(minHeight: 15, minWidth: 18),
            hintText: '음악을 검색해 보세요',
            hintStyle: AppTexts.b6.copyWith(color: ColorName.g3),
            border: InputBorder.none,
            isCollapsed: true,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          ),
        ),
      ),
    );
  }

  Widget MusicInfo({
    required BuildContext context,
    required MusicItem music,
    required bool isSelected,
  }) {
    return Consumer(
      builder: (context, ref, child) {
        return GestureDetector(
          onTap: () {
            ref.read(selectedMusicProvider.notifier).state = music;
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 88,
            color: isSelected
                ? const Color.fromRGBO(119, 93, 255, 0.3)
                : ColorName.b1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 13),
                ClipRRect(
                  borderRadius: BorderRadius.circular(7.27),
                  child: Image.network(
                    music.coverImageUrl,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 60,
                        height: 60,
                        color: const Color.fromRGBO(217, 217, 217, 1),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        music.title,
                        style: AppTexts.b7.copyWith(color: ColorName.w1),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: music.tags.map((tag) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 6.0),
                            child: Text(
                              "#" + tag.name,
                              style: AppTexts.b11.copyWith(color: ColorName.g2),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
