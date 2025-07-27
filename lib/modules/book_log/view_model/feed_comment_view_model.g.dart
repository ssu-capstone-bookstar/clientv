// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_comment_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$feedCommentViewModelHash() =>
    r'f81392435f73fb12d1f83c711294f5729507055f';

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

abstract class _$FeedCommentViewModel
    extends BuildlessAutoDisposeAsyncNotifier<FeedCommentState> {
  late final int diaryId;

  FutureOr<FeedCommentState> build(
    int diaryId,
  );
}

/// See also [FeedCommentViewModel].
@ProviderFor(FeedCommentViewModel)
const feedCommentViewModelProvider = FeedCommentViewModelFamily();

/// See also [FeedCommentViewModel].
class FeedCommentViewModelFamily extends Family<AsyncValue<FeedCommentState>> {
  /// See also [FeedCommentViewModel].
  const FeedCommentViewModelFamily();

  /// See also [FeedCommentViewModel].
  FeedCommentViewModelProvider call(
    int diaryId,
  ) {
    return FeedCommentViewModelProvider(
      diaryId,
    );
  }

  @override
  FeedCommentViewModelProvider getProviderOverride(
    covariant FeedCommentViewModelProvider provider,
  ) {
    return call(
      provider.diaryId,
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
  String? get name => r'feedCommentViewModelProvider';
}

/// See also [FeedCommentViewModel].
class FeedCommentViewModelProvider extends AutoDisposeAsyncNotifierProviderImpl<
    FeedCommentViewModel, FeedCommentState> {
  /// See also [FeedCommentViewModel].
  FeedCommentViewModelProvider(
    int diaryId,
  ) : this._internal(
          () => FeedCommentViewModel()..diaryId = diaryId,
          from: feedCommentViewModelProvider,
          name: r'feedCommentViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$feedCommentViewModelHash,
          dependencies: FeedCommentViewModelFamily._dependencies,
          allTransitiveDependencies:
              FeedCommentViewModelFamily._allTransitiveDependencies,
          diaryId: diaryId,
        );

  FeedCommentViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.diaryId,
  }) : super.internal();

  final int diaryId;

  @override
  FutureOr<FeedCommentState> runNotifierBuild(
    covariant FeedCommentViewModel notifier,
  ) {
    return notifier.build(
      diaryId,
    );
  }

  @override
  Override overrideWith(FeedCommentViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: FeedCommentViewModelProvider._internal(
        () => create()..diaryId = diaryId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        diaryId: diaryId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<FeedCommentViewModel,
      FeedCommentState> createElement() {
    return _FeedCommentViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FeedCommentViewModelProvider && other.diaryId == diaryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, diaryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FeedCommentViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<FeedCommentState> {
  /// The parameter `diaryId` of this provider.
  int get diaryId;
}

class _FeedCommentViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<FeedCommentViewModel,
        FeedCommentState> with FeedCommentViewModelRef {
  _FeedCommentViewModelProviderElement(super.provider);

  @override
  int get diaryId => (origin as FeedCommentViewModelProvider).diaryId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
