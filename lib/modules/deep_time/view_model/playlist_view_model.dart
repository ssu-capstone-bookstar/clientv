import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:book/modules/deep_time/model/music_list_response.dart';
import 'package:book/modules/deep_time/repository/deep_time_repository.dart';

part 'playlist_view_model.g.dart';

@riverpod
AudioPlayer audioPlayer(AudioPlayerRef ref) {
  final player = AudioPlayer();
  ref.onDispose(player.dispose);
  return player;
}

/// Selected Music State Provider
@riverpod
class SelectedMusic extends _$SelectedMusic {
  @override
  MusicItem? build() {
    return null;
  }

  void select(MusicItem? music) => state = music;
  void cancel() => state = null;
}

@riverpod
class MusicListViewModel extends _$MusicListViewModel {
  @override
  Future<MusicListResponse> build() async {
    final repo = ref.read(deepTimeRepositoryProvider);
    final response = await repo.getMusicList();
    return response.data;
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    try {
      final repo = ref.read(deepTimeRepositoryProvider);
      final response = await repo.getMusicList();
      state = AsyncData(response.data);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}

@riverpod
List<MusicItem> playlist(PlaylistRef ref) {
  final musicListState = ref.watch(musicListViewModelProvider);
  return musicListState.maybeWhen(
    data: (musicList) => musicList.musics,
    orElse: () => [],
  );
}
