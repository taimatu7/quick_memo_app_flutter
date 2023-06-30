import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/tag.dart';
import 'package:quick_memo_app_flutter/utils/strings.dart';
import 'package:quick_memo_app_flutter/view_models/write/main_screen_state_notifier.dart';
import 'package:quick_memo_app_flutter/views/shared/route_drawer.dart';

class MainScreen extends ConsumerWidget {
  MainScreen({super.key});
  static const routeName = '/';
  final TextEditingController _textEditingController = TextEditingController();
  Tag? selectedTag;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainScreenState = ref.watch(mainScreenStateNotifierProvier);
    final mainScreenStateNotifier =
        ref.read(mainScreenStateNotifierProvier.notifier);

    // タグの初期値にタグ無しに設定する
    selectedTag ??= mainScreenState.tagsWithSelectCheck.first["tag"] as Tag;
    Color borderColor = Colors.black;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(Strings.appName),
        actions: [
          IconButton(
            icon: const Icon(Icons.fiber_new_sharp),
            onPressed: () {
              // メモの入力値をクリアする
              _textEditingController.clear();
            },
          ),
        ],
      ),
      body: Row(
        children: <Widget>[
          // タグ一覧を列で表示する
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.orange[100],
              child: ListView.builder(
                itemCount: mainScreenState.tagsWithSelectCheck.length,
                itemBuilder: (context, index) {
                  final tag =
                      mainScreenState.tagsWithSelectCheck[index]["tag"] as Tag;
                  final isSelected = mainScreenState.tagsWithSelectCheck[index]
                      ["isSelected"] as bool;

                  return Container(
                    decoration: BoxDecoration(
                      color: Color(tag.color),
                      border: Border.all(
                          color:
                              isSelected ? Colors.red : Colors.orange.shade100,
                          width: 2.0),
                    ),
                    child: ListTile(
                      title: Text(
                        tag.name,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      onTap: () {
                        mainScreenStateNotifier.changeSelectedTag(index);
                        selectedTag = tag;
                        print(index);
                      },
                    ),
                  );
                },
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
          mainScreenStateNotifier.saveMemo(
              _textEditingController.text, selectedTag!);
          _textEditingController.clear();

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
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
