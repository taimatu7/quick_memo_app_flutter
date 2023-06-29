import 'package:flutter/material.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/tag.dart';

class DeleteTagDialog extends StatelessWidget {
  const DeleteTagDialog(
      {super.key, required this.tag, required this.deleteFunction});
  final Tag tag;
  final Function deleteFunction;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('タグを削除しますか？'),
      actions: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlueAccent,
          ),
          onPressed: () {
            deleteFunction(tag);
            Navigator.pop(context, tag);
          },
          child: const Text('OK',
              style: TextStyle(
                color: Colors.white,
              )),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('キャンセル',
              style: TextStyle(
                color: Colors.white,
              )),
        ),
      ],
    );
  }
}
