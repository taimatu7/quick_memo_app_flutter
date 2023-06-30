import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:quick_memo_app_flutter/domain/shared/model/tag.dart';

class AddTagDialog extends StatelessWidget {
  AddTagDialog({super.key, required this.tag, required this.saveFunction}) {
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
      title: const Text(
        'タグ名と色を入力してください',
        style: TextStyle(fontSize: 18),
      ),
      content: SizedBox(
        height: 240,
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: TextField(
                controller: _tagTextEditingController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: '※タグ名'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              child: ColorPicker(
                pickerColor: pickerColor,
                onColorChanged: _changeColor,
                pickerAreaHeightPercent: 0.2,
                showLabel: false,
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
