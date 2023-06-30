import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/memo.dart';
import 'package:quick_memo_app_flutter/view_models/read_and_edit/read_and_edit_screen_state_notifier.dart';
import 'package:quick_memo_app_flutter/views/read_and_edit/widgets/dialogs/delete_memo_dialog.dart';
import 'package:quick_memo_app_flutter/views/read_and_edit/widgets/dialogs/read_and_edit_dialog.dart';
import 'package:quick_memo_app_flutter/views/shared/route_drawer.dart';

class ReadAndEditScreen extends ConsumerWidget {
  const ReadAndEditScreen({super.key});
  static const routeName = '/read_and_edit';

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

    // ダイアログ表示
    void showEditDialog(Memo memo, Function updateFunction) {
      showModalBottomSheet(
        // シートの高さが半分以上になることがあるためtrueにする
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return ReadAndEditDialog(
            memo: memo,
            tagList: readAndEditScreenState.tags,
            updateFunction: updateFunction,
          );
        },
      ).then((value) {
        if (value != null) {
          // 更新した日付のメモを表示する
          readAndEditScreenStateNotifier.updateDisplayMemos(value.updatedAt);
        }
      });
    }

    // ダイアログ表示
    void showDeleteDialog(Memo memo, Function deleteFunction) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return DeleteMemoDialog(
            memo: memo,
            deleteFunction: deleteFunction,
          );
        },
      ).then((value) {
        if (value != null) {
          // 更新した日付のメモを表示する
          readAndEditScreenStateNotifier.updateDisplayMemos(value.updatedAt);
        }
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('メモ閲覧・編集画面'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Row(
        children: <Widget>[
          // 日付一覧
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.orange,
              child: Column(
                children: <Widget>[
                  Flexible(
                    child: ListView.separated(
                        itemCount: readAndEditScreenState.dates.length,
                        itemBuilder: (context, index) => ListTile(
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 0.0),
                              title: Text(formatDate(
                                  readAndEditScreenState.dates[index])),
                              onTap: () {
                                readAndEditScreenStateNotifier.getMemosByDate(
                                    readAndEditScreenState.dates[index]);
                              },
                            ),
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(
                              color: Colors.white,
                              height: 1.0,
                            )),
                  ),
                ],
              ),
            ),
          ),
          // メモ一覧
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.orange[100],
              child: ListView.builder(
                itemCount: readAndEditScreenState.displayMemos.length,
                itemBuilder: (context, index) => Card(
                  color: Color(
                      readAndEditScreenState.displayMemos[index].tag.color),
                  child: ListTile(
                    title: Text(
                      readAndEditScreenState.displayMemos[index].text,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        showDeleteDialog(
                            readAndEditScreenState.displayMemos[index],
                            readAndEditScreenStateNotifier.deleteMemo);
                      },
                    ),
                    onTap: () {
                      showEditDialog(readAndEditScreenState.displayMemos[index],
                          readAndEditScreenStateNotifier.updateMemo);
                    },
                  ),
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
