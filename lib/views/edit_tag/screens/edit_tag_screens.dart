import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quick_memo_app_flutter/views/edit_tag/widgets/dialogs/color_picker_dialog.dart';
import 'package:quick_memo_app_flutter/views/shared/route_drawer.dart';

class EditTagScreen extends ConsumerWidget {
  const EditTagScreen({Key? key}) : super(key: key);
  static const routeName = '/edit_tag';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void showPickerDialog() {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return const ColorPickerDialog();
          });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('メモ閲覧・編集画面'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: const Text('タグ1'),
              tileColor: Colors.orange,
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.color_lens_outlined),
                    onPressed: () {
                      showPickerDialog();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('タグ2'),
              tileColor: Colors.green,
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.color_lens_outlined),
                    onPressed: () {
                      showPickerDialog();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: const RouteDrawer(),
    );
  }
}
