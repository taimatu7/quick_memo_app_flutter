import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quick_memo_app_flutter/routes/router.dart';
import 'package:quick_memo_app_flutter/utils/common_colors.dart';
import 'package:quick_memo_app_flutter/utils/strings.dart';
import 'package:quick_memo_app_flutter/views/write/screens/main_screen.dart';
import 'package:quick_memo_app_flutter/views/read_and_edit/screens/read_and_edit_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // go_routerでルーティングを行う
    final goRouter = ref.watch(goRouterProvider);

    return MaterialApp.router(
      routerConfig: goRouter,
      title: '即メモ',
      theme: ThemeData(
        colorScheme: CommonColors.themeColorScheme,
        useMaterial3: true,
      ),
    );
  }
}
