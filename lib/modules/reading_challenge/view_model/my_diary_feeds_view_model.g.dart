// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_diary_feeds_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$myDiaryFeedsViewModelHash() =>
    r'6166913e7168a7f7161fc469efb1a79dc59bce75';

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

abstract class _$MyDiaryFeedsViewModel
    extends BuildlessAutoDisposeAsyncNotifier<
        DualCursorPageResponse<DiaryFeedResponse>> {
  late final int bookId;

  FutureOr<DualCursorPageResponse<DiaryFeedResponse>> build(
    int bookId,
  );
}

/// See also [MyDiaryFeedsViewModel].
@ProviderFor(MyDiaryFeedsViewModel)
const myDiaryFeedsViewModelProvider = MyDiaryFeedsViewModelFamily();

/// See also [MyDiaryFeedsViewModel].
class MyDiaryFeedsViewModelFamily
    extends Family<AsyncValue<DualCursorPageResponse<DiaryFeedResponse>>> {
  /// See also [MyDiaryFeedsViewModel].
  const MyDiaryFeedsViewModelFamily();

  /// See also [MyDiaryFeedsViewModel].
  MyDiaryFeedsViewModelProvider call(
    int bookId,
  ) {
    return MyDiaryFeedsViewModelProvider(
      bookId,
    );
  }

  @override
  MyDiaryFeedsViewModelProvider getProviderOverride(
    covariant MyDiaryFeedsViewModelProvider provider,
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
  String? get name => r'myDiaryFeedsViewModelProvider';
}

/// See also [MyDiaryFeedsViewModel].
class MyDiaryFeedsViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<MyDiaryFeedsViewModel,
        DualCursorPageResponse<DiaryFeedResponse>> {
  /// See also [MyDiaryFeedsViewModel].
  MyDiaryFeedsViewModelProvider(
    int bookId,
  ) : this._internal(
          () => MyDiaryFeedsViewModel()..bookId = bookId,
          from: myDiaryFeedsViewModelProvider,
          name: r'myDiaryFeedsViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$myDiaryFeedsViewModelHash,
          dependencies: MyDiaryFeedsViewModelFamily._dependencies,
          allTransitiveDependencies:
              MyDiaryFeedsViewModelFamily._allTransitiveDependencies,
          bookId: bookId,
        );

  MyDiaryFeedsViewModelProvider._internal(
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
  FutureOr<DualCursorPageResponse<DiaryFeedResponse>> runNotifierBuild(
    covariant MyDiaryFeedsViewModel notifier,
  ) {
    return notifier.build(
      bookId,
    );
  }

  @override
  Override overrideWith(MyDiaryFeedsViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: MyDiaryFeedsViewModelProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<MyDiaryFeedsViewModel,
      DualCursorPageResponse<DiaryFeedResponse>> createElement() {
    return _MyDiaryFeedsViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyDiaryFeedsViewModelProvider && other.bookId == bookId;
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
mixin MyDiaryFeedsViewModelRef on AutoDisposeAsyncNotifierProviderRef<
    DualCursorPageResponse<DiaryFeedResponse>> {
  /// The parameter `bookId` of this provider.
  int get bookId;
}

class _MyDiaryFeedsViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MyDiaryFeedsViewModel,
        DualCursorPageResponse<DiaryFeedResponse>>
    with MyDiaryFeedsViewModelRef {
  _MyDiaryFeedsViewModelProviderElement(super.provider);

  @override
  int get bookId => (origin as MyDiaryFeedsViewModelProvider).bookId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
