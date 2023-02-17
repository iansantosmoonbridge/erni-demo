import 'package:erni/core/client.dart';
import 'package:erni/models/user/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_repository.g.dart';

@riverpod
IUserRepository userRepository(UserRepositoryRef ref) {
  return UserRepository(ref);
}

abstract class IUserRepository {
  Future<List<User>> findMany();
  Future<User> findUnique({
    required String id,
  });
}

class UserRepository implements IUserRepository {
  UserRepository(this.ref);
  final UserRepositoryRef ref;

  @override
  Future<List<User>> findMany() {
    return ref.read(clientProvider).findManyUsers().then((value) {
      return value.toSet().toList();
    });
  }

  @override
  Future<User> findUnique({
    required String id,
  }) {
    return findMany().then((value) {
      return value.firstWhere((element) {
        return element.id == id;
      });
    });
  }
}
