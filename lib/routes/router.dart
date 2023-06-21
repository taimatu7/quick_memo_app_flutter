import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_memo_app_flutter/views/edit_tag/screens/edit_tag_screens.dart';
import 'package:quick_memo_app_flutter/views/write/screens/main_screen.dart';
import 'package:quick_memo_app_flutter/views/read_and_edit/screens/read_and_edit_screen.dart';
import 'package:quick_memo_app_flutter/views/setting/screens/setting_screen.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        name: MainScreen.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return MainScreen();
        },
      ),
      GoRoute(
        path: '/read_and_edit',
        name: ReadAndEditScreen.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return const ReadAndEditScreen();
        },
      ),
      GoRoute(
        path: '/edit_tag',
        name: EditTagScreen.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return const EditTagScreen();
        },
      ),
      GoRoute(
        path: '/setting',
        name: SettingScreen.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return const SettingScreen();
        },
      ),
    ],
  );
});
