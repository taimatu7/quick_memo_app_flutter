import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quick_memo_app_flutter/views/read_and_edit/widgets/dialogs/read_and_edit_dialog.dart';
import 'package:quick_memo_app_flutter/views/shared/route_drawer.dart';

class ReadAndEditScreen extends ConsumerWidget {
  const ReadAndEditScreen({super.key});
  static const routeName = '/read_and_edit';
  // ダイアログ表示
  void _showDialog(BuildContext context) {
    showModalBottomSheet(
      // シートの高さが半分以上になることがあるためtrueにする
      isScrollControlled: true,
      context: context,
      builder: (_) {
        return ReadAndEditDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('メモ閲覧・編集画面'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            icon: const Icon(Icons.fiber_new_sharp),
            onPressed: () {},
          ),
        ],
      ),
      body: Row(
        children: <Widget>[
          // 日付一覧
          Container(
            color: Colors.orange,
            child: Column(
              children: <Widget>[
                Text("0000/00/00"),
                Divider(),
                Text("0000/00/00"),
                Divider(),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.orange[100],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                      child: Text("メモの一行目1\n※タップするとボトムシートが表示されます。"),
                      onTap: () => _showDialog(context)),
                  Divider(),
                  Text("メモの一行目2"),
                  Divider(),
                ],
              ),
            ),
          )
        ],
      ),
      drawer: const RouteDrawer(),
    );
  }
}
