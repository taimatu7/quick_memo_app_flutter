import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/tag.dart';

class EditTagDialog extends StatelessWidget {
  EditTagDialog({super.key, required this.tag, required this.saveFunction}) {
    // タグを編集する場合
    pickerColor = _createMaterialColor(color: Color(tag.color));
    _tagTextEditingController.text = tag.name;
  }
  final Function saveFunction;
  final Tag tag;
  final TextEditingController _tagTextEditingController =
      TextEditingController();
  var pickerColor;

  void _changeColor(Color color) {
    pickerColor = _createMaterialColor(color: color);
  }

  MaterialColor _createMaterialColor({required Color color}) {
    return MaterialColor(color.value, {
      50: Color(tag.color),
      100: Color(tag.color),
      200: Color(tag.color),
      300: Color(tag.color),
      400: Color(tag.color),
      500: Color(tag.color),
      600: Color(tag.color),
      700: Color(tag.color),
      800: Color(tag.color),
      900: Color(tag.color),
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('色を入力してください'),
      content: SizedBox(
        height: 300,
        child: Column(
          children: [
            SingleChildScrollView(
              child: ColorPicker(
                pickerColor: pickerColor,
                onColorChanged: _changeColor,
                pickerAreaHeightPercent: 0.2,
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        ElevatedButton(
          child: const Text('OK'),
          onPressed: () {
            if (_tagTextEditingController.text.isEmpty) {
              // TODO: エラー表示
              return;
            }
            final tempTag = Tag(_tagTextEditingController.text,
                pickerColor.value, tag.createdAt, DateTime.now());
            _tagTextEditingController.text;
            saveFunction(tempTag);
            Navigator.pop(context, tempTag);
          },
        ),
      ],
    );
  }
}
