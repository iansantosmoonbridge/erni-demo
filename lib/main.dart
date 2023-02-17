import 'package:erni/app.dart';
import 'package:erni/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: App(
        router: AppRouter(),
      ),
    ),
  );
}
