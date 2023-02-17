import 'package:dio/dio.dart';
import 'package:erni/models/user/user.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'client.g.dart';

@riverpod
Client client(ClientRef ref) {
  return Client(Dio());
}

@RestApi(baseUrl: 'https://gist.githubusercontent.com/dustincatap/66d48847b3ca07af7cef789d6ac8fee8/raw/550798be0efa8b98f6924cfb4ad812cd290f568a')
abstract class Client {
  factory Client(Dio dio, {String baseUrl}) = _Client;

  @GET('/users.json')
  Future<List<User>> findManyUsers();
}
