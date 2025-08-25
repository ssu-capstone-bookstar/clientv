// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_log_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookLogViewModelHash() => r'0821ba0ca9ca2800aaf3296e3fd56fca1bcec174';

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

abstract class _$BookLogViewModel
    extends BuildlessAutoDisposeAsyncNotifier<BookLogState> {
  late final int? memberId;

  FutureOr<BookLogState> build(
    int? memberId,
  );
}

/// See also [BookLogViewModel].
@ProviderFor(BookLogViewModel)
const bookLogViewModelProvider = BookLogViewModelFamily();

/// See also [BookLogViewModel].
class BookLogViewModelFamily extends Family<AsyncValue<BookLogState>> {
  /// See also [BookLogViewModel].
  const BookLogViewModelFamily();

  /// See also [BookLogViewModel].
  BookLogViewModelProvider call(
    int? memberId,
  ) {
    return BookLogViewModelProvider(
      memberId,
    );
  }

  @override
  BookLogViewModelProvider getProviderOverride(
    covariant BookLogViewModelProvider provider,
  ) {
    return call(
      provider.memberId,
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
  String? get name => r'bookLogViewModelProvider';
}

/// See also [BookLogViewModel].
class BookLogViewModelProvider extends AutoDisposeAsyncNotifierProviderImpl<
    BookLogViewModel, BookLogState> {
  /// See also [BookLogViewModel].
  BookLogViewModelProvider(
    int? memberId,
  ) : this._internal(
          () => BookLogViewModel()..memberId = memberId,
          from: bookLogViewModelProvider,
          name: r'bookLogViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookLogViewModelHash,
          dependencies: BookLogViewModelFamily._dependencies,
          allTransitiveDependencies:
              BookLogViewModelFamily._allTransitiveDependencies,
          memberId: memberId,
        );

  BookLogViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.memberId,
  }) : super.internal();

  final int? memberId;

  @override
  FutureOr<BookLogState> runNotifierBuild(
    covariant BookLogViewModel notifier,
  ) {
    return notifier.build(
      memberId,
    );
  }

  @override
  Override overrideWith(BookLogViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookLogViewModelProvider._internal(
        () => create()..memberId = memberId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        memberId: memberId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<BookLogViewModel, BookLogState>
      createElement() {
    return _BookLogViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookLogViewModelProvider && other.memberId == memberId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, memberId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BookLogViewModelRef on AutoDisposeAsyncNotifierProviderRef<BookLogState> {
  /// The parameter `memberId` of this provider.
  int? get memberId;
}

class _BookLogViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<BookLogViewModel,
        BookLogState> with BookLogViewModelRef {
  _BookLogViewModelProviderElement(super.provider);

  @override
  int? get memberId => (origin as BookLogViewModelProvider).memberId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
