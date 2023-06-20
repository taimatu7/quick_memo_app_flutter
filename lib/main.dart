import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quick_memo_app_flutter/utils/common_colors.dart';
import 'package:quick_memo_app_flutter/utils/strings.dart';
import 'package:quick_memo_app_flutter/views/main/screens/main_screen.dart';
import 'package:quick_memo_app_flutter/views/read_and_edit/screens/read_and_edit_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: CommonColors.themeColorScheme,
        useMaterial3: true,
      ),
      // home: const MainScreen(title: Strings.appName),
      // 確認のために一旦ReadAndEditScreenを表示する
      home: ReadAndEditScreen(),
    );
  }
}
