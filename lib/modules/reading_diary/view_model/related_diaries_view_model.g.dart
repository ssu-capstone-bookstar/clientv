// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related_diaries_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$relatedDiariesViewModelHash() =>
    r'850f21b57de45c74bf7835ae1e1e1cdd10ce0c47';

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

abstract class _$RelatedDiariesViewModel
    extends BuildlessAutoDisposeAsyncNotifier<RelatedDiaryState> {
  late final int bookId;

  FutureOr<RelatedDiaryState> build(
    int bookId,
  );
}

/// See also [RelatedDiariesViewModel].
@ProviderFor(RelatedDiariesViewModel)
const relatedDiariesViewModelProvider = RelatedDiariesViewModelFamily();

/// See also [RelatedDiariesViewModel].
class RelatedDiariesViewModelFamily
    extends Family<AsyncValue<RelatedDiaryState>> {
  /// See also [RelatedDiariesViewModel].
  const RelatedDiariesViewModelFamily();

  /// See also [RelatedDiariesViewModel].
  RelatedDiariesViewModelProvider call(
    int bookId,
  ) {
    return RelatedDiariesViewModelProvider(
      bookId,
    );
  }

  @override
  RelatedDiariesViewModelProvider getProviderOverride(
    covariant RelatedDiariesViewModelProvider provider,
  ) {
    return call(
      provider.bookId,
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
  String? get name => r'relatedDiariesViewModelProvider';
}

/// See also [RelatedDiariesViewModel].
class RelatedDiariesViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<RelatedDiariesViewModel,
        RelatedDiaryState> {
  /// See also [RelatedDiariesViewModel].
  RelatedDiariesViewModelProvider(
    int bookId,
  ) : this._internal(
          () => RelatedDiariesViewModel()..bookId = bookId,
          from: relatedDiariesViewModelProvider,
          name: r'relatedDiariesViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$relatedDiariesViewModelHash,
          dependencies: RelatedDiariesViewModelFamily._dependencies,
          allTransitiveDependencies:
              RelatedDiariesViewModelFamily._allTransitiveDependencies,
          bookId: bookId,
        );

  RelatedDiariesViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.bookId,
  }) : super.internal();

  final int bookId;

  @override
  FutureOr<RelatedDiaryState> runNotifierBuild(
    covariant RelatedDiariesViewModel notifier,
  ) {
    return notifier.build(
      bookId,
    );
  }

  @override
  Override overrideWith(RelatedDiariesViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: RelatedDiariesViewModelProvider._internal(
        () => create()..bookId = bookId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        bookId: bookId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<RelatedDiariesViewModel,
      RelatedDiaryState> createElement() {
    return _RelatedDiariesViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RelatedDiariesViewModelProvider && other.bookId == bookId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, bookId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RelatedDiariesViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<RelatedDiaryState> {
  /// The parameter `bookId` of this provider.
  int get bookId;
}

class _RelatedDiariesViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<RelatedDiariesViewModel,
        RelatedDiaryState> with RelatedDiariesViewModelRef {
  _RelatedDiariesViewModelProviderElement(super.provider);

  @override
  int get bookId => (origin as RelatedDiariesViewModelProvider).bookId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
