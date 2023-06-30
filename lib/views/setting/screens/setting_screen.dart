import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quick_memo_app_flutter/views/shared/route_drawer.dart';

class SettingScreen extends ConsumerWidget {
  const SettingScreen({Key? key}) : super(key: key);
  static const routeName = '/setting';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // var isDarkTheme = false;
    return Scaffold(
      appBar: AppBar(
        title: const Text('設定画面'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(
            title: Text('バージョン'),
            trailing: Text('1.0.0'),
          ),
          Divider(),
        ],
      ),
      drawer: const RouteDrawer(),
    );
  }
}
