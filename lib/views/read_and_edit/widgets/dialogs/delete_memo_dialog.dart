import 'package:flutter/material.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/memo.dart';

class DeleteMemoDialog extends StatelessWidget {
  const DeleteMemoDialog(
      {super.key, required this.memo, required this.deleteFunction});
  final Memo memo;
  final Function deleteFunction;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('メモを削除しますか？'),
      actions: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlueAccent,
          ),
          onPressed: () {
            deleteFunction(memo);
            Navigator.pop(context, memo);
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
