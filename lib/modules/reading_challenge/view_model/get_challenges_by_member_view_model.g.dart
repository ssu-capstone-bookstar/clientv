// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_challenges_by_member_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getChallengesByMemberViewModelHash() =>
    r'cd097ae58c0146124494c83bd97d3ca875736d55';

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

abstract class _$GetChallengesByMemberViewModel
    extends BuildlessAutoDisposeNotifier<GetChallengesByMemberScreenState> {
  late final int? memberId;

  GetChallengesByMemberScreenState build({
    int? memberId,
  });
}

/// See also [GetChallengesByMemberViewModel].
@ProviderFor(GetChallengesByMemberViewModel)
const getChallengesByMemberViewModelProvider =
    GetChallengesByMemberViewModelFamily();

/// See also [GetChallengesByMemberViewModel].
class GetChallengesByMemberViewModelFamily
    extends Family<GetChallengesByMemberScreenState> {
  /// See also [GetChallengesByMemberViewModel].
  const GetChallengesByMemberViewModelFamily();

  /// See also [GetChallengesByMemberViewModel].
  GetChallengesByMemberViewModelProvider call({
    int? memberId,
  }) {
    return GetChallengesByMemberViewModelProvider(
      memberId: memberId,
    );
  }

  @override
  GetChallengesByMemberViewModelProvider getProviderOverride(
    covariant GetChallengesByMemberViewModelProvider provider,
  ) {
    return call(
      memberId: provider.memberId,
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
  String? get name => r'getChallengesByMemberViewModelProvider';
}

/// See also [GetChallengesByMemberViewModel].
class GetChallengesByMemberViewModelProvider
    extends AutoDisposeNotifierProviderImpl<GetChallengesByMemberViewModel,
        GetChallengesByMemberScreenState> {
  /// See also [GetChallengesByMemberViewModel].
  GetChallengesByMemberViewModelProvider({
    int? memberId,
  }) : this._internal(
          () => GetChallengesByMemberViewModel()..memberId = memberId,
          from: getChallengesByMemberViewModelProvider,
          name: r'getChallengesByMemberViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getChallengesByMemberViewModelHash,
          dependencies: GetChallengesByMemberViewModelFamily._dependencies,
          allTransitiveDependencies:
              GetChallengesByMemberViewModelFamily._allTransitiveDependencies,
          memberId: memberId,
        );

  GetChallengesByMemberViewModelProvider._internal(
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
  GetChallengesByMemberScreenState runNotifierBuild(
    covariant GetChallengesByMemberViewModel notifier,
  ) {
    return notifier.build(
      memberId: memberId,
    );
  }

  @override
  Override overrideWith(GetChallengesByMemberViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: GetChallengesByMemberViewModelProvider._internal(
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
  AutoDisposeNotifierProviderElement<GetChallengesByMemberViewModel,
      GetChallengesByMemberScreenState> createElement() {
    return _GetChallengesByMemberViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetChallengesByMemberViewModelProvider &&
        other.memberId == memberId;
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
mixin GetChallengesByMemberViewModelRef
    on AutoDisposeNotifierProviderRef<GetChallengesByMemberScreenState> {
  /// The parameter `memberId` of this provider.
  int? get memberId;
}

class _GetChallengesByMemberViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<GetChallengesByMemberViewModel,
        GetChallengesByMemberScreenState>
    with GetChallengesByMemberViewModelRef {
  _GetChallengesByMemberViewModelProviderElement(super.provider);

  @override
  int? get memberId =>
      (origin as GetChallengesByMemberViewModelProvider).memberId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
