import 'package:erni/models/user/user.dart';
import 'package:erni/models/user/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_detail_view_model.g.dart';

@riverpod
class UserDetailViewModel extends _$UserDetailViewModel {
  @override
  FutureOr<User> build({
    required String id,
  }) {
    return ref.read(userRepositoryProvider).findUnique(
          id: id,
        );
  }
}
