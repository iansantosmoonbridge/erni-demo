import 'package:erni/views/user_detail/user_detail_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({
    required this.id,
    super.key,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final asyncValue = ref.watch(userDetailViewModelProvider(id: id));
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
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(data.value.imageUrl),
                      radius: 40,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.value.name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
