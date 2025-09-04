// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookViewModelHash() => r'e0eca8f572d1e683be7dfb2ac26ee6f99d5a4856';

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

abstract class _$BookViewModel
    extends BuildlessAutoDisposeAsyncNotifier<BookOverviewState> {
  late final int bookId;

  FutureOr<BookOverviewState> build(
    int bookId,
  );
}

/// See also [BookViewModel].
@ProviderFor(BookViewModel)
const bookViewModelProvider = BookViewModelFamily();

/// See also [BookViewModel].
class BookViewModelFamily extends Family<AsyncValue<BookOverviewState>> {
  /// See also [BookViewModel].
  const BookViewModelFamily();

  /// See also [BookViewModel].
  BookViewModelProvider call(
    int bookId,
  ) {
    return BookViewModelProvider(
      bookId,
    );
  }

  @override
  BookViewModelProvider getProviderOverride(
    covariant BookViewModelProvider provider,
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
  String? get name => r'bookViewModelProvider';
}

/// See also [BookViewModel].
class BookViewModelProvider extends AutoDisposeAsyncNotifierProviderImpl<
    BookViewModel, BookOverviewState> {
  /// See also [BookViewModel].
  BookViewModelProvider(
    int bookId,
  ) : this._internal(
          () => BookViewModel()..bookId = bookId,
          from: bookViewModelProvider,
          name: r'bookViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookViewModelHash,
          dependencies: BookViewModelFamily._dependencies,
          allTransitiveDependencies:
              BookViewModelFamily._allTransitiveDependencies,
          bookId: bookId,
        );

  BookViewModelProvider._internal(
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
  FutureOr<BookOverviewState> runNotifierBuild(
    covariant BookViewModel notifier,
  ) {
    return notifier.build(
      bookId,
    );
  }

  @override
  Override overrideWith(BookViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookViewModelProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<BookViewModel, BookOverviewState>
      createElement() {
    return _BookViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookViewModelProvider && other.bookId == bookId;
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
mixin BookViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<BookOverviewState> {
  /// The parameter `bookId` of this provider.
  int get bookId;
}

class _BookViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<BookViewModel,
        BookOverviewState> with BookViewModelRef {
  _BookViewModelProviderElement(super.provider);

  @override
  int get bookId => (origin as BookViewModelProvider).bookId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
