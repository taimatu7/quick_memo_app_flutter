import 'package:flutter/material.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/memo.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/tag.dart';

class ReadAndEditDialog extends StatefulWidget {
  final Memo memo;
  final Function updateFunction;
  final List<Tag> tagList;
  final TextEditingController _memoTextEditingController =
      TextEditingController();

  ReadAndEditDialog(
      {super.key,
      required this.memo,
      required this.tagList,
      required this.updateFunction}) {
    _memoTextEditingController.text = memo.text;
    _memoTextEditingController.selection = TextSelection.fromPosition(
        TextPosition(offset: _memoTextEditingController.text.length));
  }

  @override
  State<ReadAndEditDialog> createState() =>
      ReadAndEditDialogState(memo, tagList, updateFunction);
}

class ReadAndEditDialogState extends State<ReadAndEditDialog> {
  ReadAndEditDialogState(this.memo, this.tagList, this.updateFunction) {
    _memoTextEditingController.text = memo.text;
    _memoTextEditingController.selection = TextSelection.fromPosition(
      TextPosition(offset: _memoTextEditingController.text.length),
    );

    // 編集しているメモのタグをセレクトボックスの初期値にする
    _selectedTag = memo.tag;
    print(tagList);
    print("メモタグ");
    print(memo.tag);
  }

  final Memo memo;
  final List<Tag> tagList;
  final Function updateFunction;
  final TextEditingController _memoTextEditingController =
      TextEditingController();
  late Tag _selectedTag;

  List<DropdownMenuItem<String>> createTagItemList(List<Tag> tagList) {
    return tagList
        .map((tag) => DropdownMenuItem(
            value: tag.name,
            child: Text(
                tag.name.length > 10
                    ? '${tag.name.substring(0, 10)}...'
                    : tag.name,
                overflow: TextOverflow.ellipsis)))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
        left: 15,
        right: 15,
        bottom: MediaQuery.of(context).viewInsets.bottom + 20,
      ),
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: <Widget>[
            const Text(
              'メモ内容',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 400,
              ),
              child: TextField(
                maxLines: null,
                controller: _memoTextEditingController,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'タグ: ',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Container(
                        child: DropdownButton(
                            value: _selectedTag.name,
                            items: createTagItemList(tagList),
                            onChanged: (value) {
                              setState(() {
                                Tag tempTag = tagList.firstWhere(
                                    (element) => element.name == value);
                                _selectedTag = tempTag;
                              });
                            }),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
                    child: const Text('保存'),
                    onPressed: () async {
                      final result = updateFunction(Memo(
                          memo.id,
                          _memoTextEditingController.text,
                          memo.createdAt,
                          DateTime.now(),
                          _selectedTag));
                      Navigator.pop(context, updateFunction(result));
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
