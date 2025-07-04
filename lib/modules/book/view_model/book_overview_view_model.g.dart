// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_overview_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookOverviewViewModelHash() =>
    r'294c8e87f43786a98d54ea9b4a35588c6b59c6f4';

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

abstract class _$BookOverviewViewModel
    extends BuildlessAutoDisposeAsyncNotifier<BookOverviewResponse> {
  late final int bookId;

  FutureOr<BookOverviewResponse> build(
    int bookId,
  );
}

/// See also [BookOverviewViewModel].
@ProviderFor(BookOverviewViewModel)
const bookOverviewViewModelProvider = BookOverviewViewModelFamily();

/// See also [BookOverviewViewModel].
class BookOverviewViewModelFamily
    extends Family<AsyncValue<BookOverviewResponse>> {
  /// See also [BookOverviewViewModel].
  const BookOverviewViewModelFamily();

  /// See also [BookOverviewViewModel].
  BookOverviewViewModelProvider call(
    int bookId,
  ) {
    return BookOverviewViewModelProvider(
      bookId,
    );
  }

  @override
  BookOverviewViewModelProvider getProviderOverride(
    covariant BookOverviewViewModelProvider provider,
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
  String? get name => r'bookOverviewViewModelProvider';
}

/// See also [BookOverviewViewModel].
class BookOverviewViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<BookOverviewViewModel,
        BookOverviewResponse> {
  /// See also [BookOverviewViewModel].
  BookOverviewViewModelProvider(
    int bookId,
  ) : this._internal(
          () => BookOverviewViewModel()..bookId = bookId,
          from: bookOverviewViewModelProvider,
          name: r'bookOverviewViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookOverviewViewModelHash,
          dependencies: BookOverviewViewModelFamily._dependencies,
          allTransitiveDependencies:
              BookOverviewViewModelFamily._allTransitiveDependencies,
          bookId: bookId,
        );

  BookOverviewViewModelProvider._internal(
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
  FutureOr<BookOverviewResponse> runNotifierBuild(
    covariant BookOverviewViewModel notifier,
  ) {
    return notifier.build(
      bookId,
    );
  }

  @override
  Override overrideWith(BookOverviewViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookOverviewViewModelProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<BookOverviewViewModel,
      BookOverviewResponse> createElement() {
    return _BookOverviewViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookOverviewViewModelProvider && other.bookId == bookId;
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
mixin BookOverviewViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<BookOverviewResponse> {
  /// The parameter `bookId` of this provider.
  int get bookId;
}

class _BookOverviewViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<BookOverviewViewModel,
        BookOverviewResponse> with BookOverviewViewModelRef {
  _BookOverviewViewModelProviderElement(super.provider);

  @override
  int get bookId => (origin as BookOverviewViewModelProvider).bookId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
