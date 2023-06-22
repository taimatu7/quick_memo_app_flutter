import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:quick_memo_app_flutter/view_models/read_and_edit/read_and_edit_screen_state_notifier.dart';
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

  String formatDate(DateTime date) {
    final formatter = DateFormat('MM-dd');
    return formatter.format(date);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final readAndEditScreenState =
        ref.watch(readAndEditScreenStateNotifierProvider);
    final readAndEditScreenStateNotifier =
        ref.watch(readAndEditScreenStateNotifierProvider.notifier);

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
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.orange,
              child: ListView.builder(
                itemCount: readAndEditScreenState.dates.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(formatDate(readAndEditScreenState.dates[index])),
                  onTap: () {
                    readAndEditScreenStateNotifier
                        .getMemosByDate(readAndEditScreenState.dates[index]);
                  },
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.orange[100],
              child: ListView.builder(
                itemCount: readAndEditScreenState.displayMemos.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(readAndEditScreenState.displayMemos[index].text),
                  onTap: () {},
                ),
              ),
            ),
          )
        ],
      ),
      drawer: const RouteDrawer(),
    );
  }
}
