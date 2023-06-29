import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/tag.dart';
import 'package:quick_memo_app_flutter/view_models/edit_tag/edit_tag_screen_state_notifier.dart';
import 'package:quick_memo_app_flutter/views/edit_tag/widgets/dialogs/add_tag_dialog.dart';
import 'package:quick_memo_app_flutter/views/edit_tag/widgets/dialogs/delete_tag_dialog.dart';
import 'package:quick_memo_app_flutter/views/shared/route_drawer.dart';

class EditTagScreen extends ConsumerWidget {
  const EditTagScreen({Key? key}) : super(key: key);
  static const routeName = '/edit_tag';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final editTagScreenState = ref.watch(editTagScreenStateNotifierProvier);
    final editTagScreenStateNotifier =
        ref.watch(editTagScreenStateNotifierProvier.notifier);

    void showEditTagDialog(
        Tag? tag, EditTagScreenStateNotifier editTagScreenStateNotifier) {
      Tag tempTag = tag ?? editTagScreenStateNotifier.createNewTag();
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AddTagDialog(
                tag: tempTag, saveFunction: editTagScreenStateNotifier.saveTag);
          }).then((value) {
        if (value != null) {
          // 更新したタグを表示する
          print(value.color);
          editTagScreenStateNotifier.getAllTags();
        }
      });
    }

    void showDeleteTagDialog(
        Tag tag, EditTagScreenStateNotifier editTagScreenStateNotifier) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return DeleteTagDialog(
                tag: tag, deleteFunction: editTagScreenStateNotifier.deleteTag);
          }).then((value) {
        if (value != null) {
          // 更新したタグを表示する
          print(value.color);
          editTagScreenStateNotifier.getAllTags();
        }
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('タグ編集画面'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              showEditTagDialog(null, editTagScreenStateNotifier);
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: editTagScreenState.tags.length,
        itemBuilder: (BuildContext context, int index) {
          final tag = editTagScreenState.tags[index];
          return ListTile(
            title: Text(tag.name),
            leading: CircleAvatar(
              backgroundColor: Color(tag.color),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                showDeleteTagDialog(tag, editTagScreenStateNotifier);
              },
            ),
            onTap: () {
              showEditTagDialog(tag, editTagScreenStateNotifier);
            },
          );
        },
      ),
      drawer: const RouteDrawer(),
    );
  }
}
