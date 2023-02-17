// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_detail_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userDetailViewModelHash() =>
    r'a482ca87e59058a26bc85c47628b429fdfb3aaa7';

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

abstract class _$UserDetailViewModel
    extends BuildlessAutoDisposeAsyncNotifier<User> {
  late final String id;

  FutureOr<User> build({
    required String id,
  });
}

/// See also [UserDetailViewModel].
@ProviderFor(UserDetailViewModel)
const userDetailViewModelProvider = UserDetailViewModelFamily();

/// See also [UserDetailViewModel].
class UserDetailViewModelFamily extends Family<AsyncValue<User>> {
  /// See also [UserDetailViewModel].
  const UserDetailViewModelFamily();

  /// See also [UserDetailViewModel].
  UserDetailViewModelProvider call({
    required String id,
  }) {
    return UserDetailViewModelProvider(
      id: id,
    );
  }

  @override
  UserDetailViewModelProvider getProviderOverride(
    covariant UserDetailViewModelProvider provider,
  ) {
    return call(
      id: provider.id,
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
  String? get name => r'userDetailViewModelProvider';
}

/// See also [UserDetailViewModel].
class UserDetailViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<UserDetailViewModel, User> {
  /// See also [UserDetailViewModel].
  UserDetailViewModelProvider({
    required this.id,
  }) : super.internal(
          () => UserDetailViewModel()..id = id,
          from: userDetailViewModelProvider,
          name: r'userDetailViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userDetailViewModelHash,
          dependencies: UserDetailViewModelFamily._dependencies,
          allTransitiveDependencies:
              UserDetailViewModelFamily._allTransitiveDependencies,
        );

  final String id;

  @override
  bool operator ==(Object other) {
    return other is UserDetailViewModelProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<User> runNotifierBuild(
    covariant UserDetailViewModel notifier,
  ) {
    return notifier.build(
      id: id,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
