import 'package:auto_route/auto_route.dart';
import 'package:erni/views/user_detail/user_detail_view.dart';
import 'package:erni/views/user_list/user_list_view.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<dynamic>(
      initial: true,
      page: UserListPage,
    ),
    AutoRoute<dynamic>(
      page: UserDetailPage,
    ),
  ],
)
class AppRouter extends _$AppRouter {}
