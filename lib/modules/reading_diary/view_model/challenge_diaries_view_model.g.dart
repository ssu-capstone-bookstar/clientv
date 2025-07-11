// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_diaries_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$challengeDiariesViewModelHash() =>
    r'e7d890d06956cb63575003ff88c8e7f901c141d5';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ChallengeDiariesViewModel
    extends BuildlessAutoDisposeAsyncNotifier<
        DualCursorPageResponse<ChallengeDiaryThumbnailResponse>> {
  late final int memberId;
  late final int challengeId;

  FutureOr<DualCursorPageResponse<ChallengeDiaryThumbnailResponse>> build({
    required int memberId,
    required int challengeId,
  });
}

/// See also [ChallengeDiariesViewModel].
@ProviderFor(ChallengeDiariesViewModel)
const challengeDiariesViewModelProvider = ChallengeDiariesViewModelFamily();

/// See also [ChallengeDiariesViewModel].
class ChallengeDiariesViewModelFamily extends Family<
    AsyncValue<DualCursorPageResponse<ChallengeDiaryThumbnailResponse>>> {
  /// See also [ChallengeDiariesViewModel].
  const ChallengeDiariesViewModelFamily();

  /// See also [ChallengeDiariesViewModel].
  ChallengeDiariesViewModelProvider call({
    required int memberId,
    required int challengeId,
  }) {
    return ChallengeDiariesViewModelProvider(
      memberId: memberId,
      challengeId: challengeId,
    );
  }

  @override
  ChallengeDiariesViewModelProvider getProviderOverride(
    covariant ChallengeDiariesViewModelProvider provider,
  ) {
    return call(
      memberId: provider.memberId,
      challengeId: provider.challengeId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'challengeDiariesViewModelProvider';
}

/// See also [ChallengeDiariesViewModel].
class ChallengeDiariesViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ChallengeDiariesViewModel,
        DualCursorPageResponse<ChallengeDiaryThumbnailResponse>> {
  /// See also [ChallengeDiariesViewModel].
  ChallengeDiariesViewModelProvider({
    required int memberId,
    required int challengeId,
  }) : this._internal(
          () => ChallengeDiariesViewModel()
            ..memberId = memberId
            ..challengeId = challengeId,
          from: challengeDiariesViewModelProvider,
          name: r'challengeDiariesViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$challengeDiariesViewModelHash,
          dependencies: ChallengeDiariesViewModelFamily._dependencies,
          allTransitiveDependencies:
              ChallengeDiariesViewModelFamily._allTransitiveDependencies,
          memberId: memberId,
          challengeId: challengeId,
        );

  ChallengeDiariesViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.memberId,
    required this.challengeId,
  }) : super.internal();

  final int memberId;
  final int challengeId;

  @override
  FutureOr<DualCursorPageResponse<ChallengeDiaryThumbnailResponse>>
      runNotifierBuild(
    covariant ChallengeDiariesViewModel notifier,
  ) {
    return notifier.build(
      memberId: memberId,
      challengeId: challengeId,
    );
  }

  @override
  Override overrideWith(ChallengeDiariesViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChallengeDiariesViewModelProvider._internal(
        () => create()
          ..memberId = memberId
          ..challengeId = challengeId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        memberId: memberId,
        challengeId: challengeId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ChallengeDiariesViewModel,
      DualCursorPageResponse<ChallengeDiaryThumbnailResponse>> createElement() {
    return _ChallengeDiariesViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChallengeDiariesViewModelProvider &&
        other.memberId == memberId &&
        other.challengeId == challengeId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, memberId.hashCode);
    hash = _SystemHash.combine(hash, challengeId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ChallengeDiariesViewModelRef on AutoDisposeAsyncNotifierProviderRef<
    DualCursorPageResponse<ChallengeDiaryThumbnailResponse>> {
  /// The parameter `memberId` of this provider.
  int get memberId;

  /// The parameter `challengeId` of this provider.
  int get challengeId;
}

class _ChallengeDiariesViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ChallengeDiariesViewModel,
        DualCursorPageResponse<ChallengeDiaryThumbnailResponse>>
    with ChallengeDiariesViewModelRef {
  _ChallengeDiariesViewModelProviderElement(super.provider);

  @override
  int get memberId => (origin as ChallengeDiariesViewModelProvider).memberId;
  @override
  int get challengeId =>
      (origin as ChallengeDiariesViewModelProvider).challengeId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
