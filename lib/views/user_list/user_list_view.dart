import 'package:auto_route/auto_route.dart';
import 'package:erni/app_router.dart';
import 'package:erni/views/user_list/user_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final asyncValue = ref.watch(userListViewModelProvider);
          return asyncValue.map(
            loading: (loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            error: (error) {
              return const Center(
                child: Text('Something went wrong'),
              );
            },
            data: (data) {
              if (data.value.isEmpty) {
                return const Center(
                  child: Text('No Users'),
                );
              }

              return RefreshIndicator(
                onRefresh: () {
                  return ref.refresh(userListViewModelProvider.future);
                },
                child: ListView.builder(
                  itemCount: data.value.length,
                  itemBuilder: (context, index) {
                    final user = data.value[index];
                    return ListTile(
                      leading: CircleAvatar(
                        foregroundImage: NetworkImage(user.imageUrl),
                      ),
                      title: Text(user.name),
                      onTap: () {
                        AutoRouter.of(context).push(UserDetailRoute(id: user.id));
                      },
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
