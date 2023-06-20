import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_memo_app_flutter/utils/common_colors.dart';
import 'package:quick_memo_app_flutter/utils/common_sizes.dart';
import 'package:quick_memo_app_flutter/views/edit_tag/screens/edit_tag_screens.dart';
import 'package:quick_memo_app_flutter/views/main/screens/main_screen.dart';
import 'package:quick_memo_app_flutter/views/read_and_edit/screens/read_and_edit_screen.dart';
import 'package:quick_memo_app_flutter/views/setting/screens/setting_screen.dart';

class RouteDrawer extends StatelessWidget {
  const RouteDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: CommonColors.themeColor,
            ),
            child: Text(
              '機能一覧',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: CommonSizes.drawerHederFontSize),
            ),
          ),
          ListTile(
            title: const Text('メモ入力画面'),
            onTap: () {
              context.goNamed(MainScreen.routeName);
            },
          ),
          ListTile(
            title: const Text('メモ閲覧・編集画面'),
            onTap: () {
              context.goNamed(ReadAndEditScreen.routeName);
            },
          ),
          ListTile(
            title: const Text('タグ編集画面'),
            onTap: () {
              context.goNamed(EditTagScreen.routeName);
            },
          ),
          ListTile(
            title: const Text('設定画面'),
            onTap: () {
              context.goNamed(SettingScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
