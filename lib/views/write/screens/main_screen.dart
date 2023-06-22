import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quick_memo_app_flutter/utils/strings.dart';
import 'package:quick_memo_app_flutter/view_models/write/main_screen_state_notifier.dart';
import 'package:quick_memo_app_flutter/views/shared/route_drawer.dart';

class MainScreen extends ConsumerWidget {
  MainScreen({super.key});
  static const routeName = '/';
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainScreenState = ref.watch(mainScreenStateNotifierProvier);
    final mainScreenStateNotifier =
        ref.read(mainScreenStateNotifierProvier.notifier);

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
              child: TextField(
                maxLines: 999,
                controller: _textEditingController,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: タグを入力できるようにする
          mainScreenStateNotifier.saveMemo(_textEditingController.text, []);
          _textEditingController.clear();

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('メモを保存しました'),
            ),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.save),
      ),
      drawer: const RouteDrawer(),
    );
  }
}
