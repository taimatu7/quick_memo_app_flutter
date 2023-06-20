import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_memo_app_flutter/views/main/screens/main_screen.dart';
import 'package:quick_memo_app_flutter/views/read_and_edit/screens/read_and_edit_screen.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        name: MainScreen.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return const MainScreen();
        },
      ),
      GoRoute(
        path: '/read_and_edit',
        name: ReadAndEditScreen.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return const ReadAndEditScreen();
        },
      ),
    ],
  );
});
