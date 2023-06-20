import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quick_memo_app_flutter/utils/strings.dart';
import 'package:quick_memo_app_flutter/views/share/route_drawer.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});
  static const routeName = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(Strings.appName),
        actions: [
          IconButton(
            icon: const Icon(Icons.fiber_new_sharp),
            onPressed: () {},
          ),
        ],
      ),
      body: Row(
        children: <Widget>[
          // タグ一覧を列で表示する
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.orange,
              child: Column(
                children: <Widget>[
                  Text('タグ1'),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                  Text('タグ2'),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                  Text('タグ3'),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ),
          // メモ入力欄を表示する
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Text('メモ入力欄'),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.save),
      ),
      drawer: const RouteDrawer(),
    );
  }
}
