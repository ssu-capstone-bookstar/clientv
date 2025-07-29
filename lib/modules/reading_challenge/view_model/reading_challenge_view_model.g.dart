// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reading_challenge_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$readingChallengeViewModelHash() =>
    r'8372c93cefac510c939691097318d00fe946a900';

/// See also [ReadingChallengeViewModel].
@ProviderFor(ReadingChallengeViewModel)
final readingChallengeViewModelProvider = AutoDisposeNotifierProvider<
    ReadingChallengeViewModel, ReadingChallengeType?>.internal(
  ReadingChallengeViewModel.new,
  name: r'readingChallengeViewModelProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$readingChallengeViewModelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ReadingChallengeViewModel
    = AutoDisposeNotifier<ReadingChallengeType?>;
String _$myDiarySortStateHash() => r'250eb8e4854133c462c23c8a30909a44c7c4e15f';

/// See also [MyDiarySortState].
@ProviderFor(MyDiarySortState)
final myDiarySortStateProvider =
    AutoDisposeNotifierProvider<MyDiarySortState, MyDiarySort>.internal(
  MyDiarySortState.new,
  name: r'myDiarySortStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$myDiarySortStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MyDiarySortState = AutoDisposeNotifier<MyDiarySort>;
String _$myDiariesViewModelHash() =>
    r'3c71a21456f5ac48c27b72674fe71263f96b48d5';

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

abstract class _$MyDiariesViewModel
    extends BuildlessAutoDisposeAsyncNotifier<MyDiaryState> {
  late final int bookId;

  FutureOr<MyDiaryState> build(
    int bookId,
  );
}

/// See also [MyDiariesViewModel].
@ProviderFor(MyDiariesViewModel)
const myDiariesViewModelProvider = MyDiariesViewModelFamily();

/// See also [MyDiariesViewModel].
class MyDiariesViewModelFamily extends Family<AsyncValue<MyDiaryState>> {
  /// See also [MyDiariesViewModel].
  const MyDiariesViewModelFamily();

  /// See also [MyDiariesViewModel].
  MyDiariesViewModelProvider call(
    int bookId,
  ) {
    return MyDiariesViewModelProvider(
      bookId,
    );
  }

  @override
  MyDiariesViewModelProvider getProviderOverride(
    covariant MyDiariesViewModelProvider provider,
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
  String? get name => r'myDiariesViewModelProvider';
}

/// See also [MyDiariesViewModel].
class MyDiariesViewModelProvider extends AutoDisposeAsyncNotifierProviderImpl<
    MyDiariesViewModel, MyDiaryState> {
  /// See also [MyDiariesViewModel].
  MyDiariesViewModelProvider(
    int bookId,
  ) : this._internal(
          () => MyDiariesViewModel()..bookId = bookId,
          from: myDiariesViewModelProvider,
          name: r'myDiariesViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$myDiariesViewModelHash,
          dependencies: MyDiariesViewModelFamily._dependencies,
          allTransitiveDependencies:
              MyDiariesViewModelFamily._allTransitiveDependencies,
          bookId: bookId,
        );

  MyDiariesViewModelProvider._internal(
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
  FutureOr<MyDiaryState> runNotifierBuild(
    covariant MyDiariesViewModel notifier,
  ) {
    return notifier.build(
      bookId,
    );
  }

  @override
  Override overrideWith(MyDiariesViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: MyDiariesViewModelProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<MyDiariesViewModel, MyDiaryState>
      createElement() {
    return _MyDiariesViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyDiariesViewModelProvider && other.bookId == bookId;
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
mixin MyDiariesViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<MyDiaryState> {
  /// The parameter `bookId` of this provider.
  int get bookId;
}

class _MyDiariesViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MyDiariesViewModel,
        MyDiaryState> with MyDiariesViewModelRef {
  _MyDiariesViewModelProviderElement(super.provider);

  @override
  int get bookId => (origin as MyDiariesViewModelProvider).bookId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
