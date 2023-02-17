import 'package:erni/models/user/user.dart';
import 'package:erni/models/user/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_list_view_model.g.dart';

@riverpod
class UserListViewModel extends _$UserListViewModel {
  @override
  FutureOr<List<User>> build() {
    return ref.read(userRepositoryProvider).findMany();
  }
}
