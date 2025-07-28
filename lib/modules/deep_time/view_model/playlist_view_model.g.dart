// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$audioPlayerHash() => r'b93f5254acea43acaaed34a3606e66a77674fb80';

/// See also [audioPlayer].
@ProviderFor(audioPlayer)
final audioPlayerProvider = AutoDisposeProvider<AudioPlayer>.internal(
  audioPlayer,
  name: r'audioPlayerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$audioPlayerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AudioPlayerRef = AutoDisposeProviderRef<AudioPlayer>;
String _$playlistHash() => r'c8f8b034b614c1b6e557386a1ad82c7ba32e0954';

/// See also [playlist].
@ProviderFor(playlist)
final playlistProvider = AutoDisposeProvider<List<MusicItem>>.internal(
  playlist,
  name: r'playlistProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$playlistHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PlaylistRef = AutoDisposeProviderRef<List<MusicItem>>;
String _$selectedMusicHash() => r'3c2b0f1c02fa06e1395f5e0d4e2387c7f8b0c3c2';

/// Selected Music State Provider
///
/// Copied from [SelectedMusic].
@ProviderFor(SelectedMusic)
final selectedMusicProvider =
    AutoDisposeNotifierProvider<SelectedMusic, MusicItem?>.internal(
  SelectedMusic.new,
  name: r'selectedMusicProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedMusicHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedMusic = AutoDisposeNotifier<MusicItem?>;
String _$musicListViewModelHash() =>
    r'87539fafd220ac573ef7ba563fd01df6c1d8e91d';

/// See also [MusicListViewModel].
@ProviderFor(MusicListViewModel)
final musicListViewModelProvider = AutoDisposeAsyncNotifierProvider<
    MusicListViewModel, MusicListResponse>.internal(
  MusicListViewModel.new,
  name: r'musicListViewModelProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$musicListViewModelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MusicListViewModel = AutoDisposeAsyncNotifier<MusicListResponse>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
