import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReadAndEditScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('メモ閲覧・編集画面'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            icon: const Icon(Icons.fiber_new_sharp),
            onPressed: () {},
          ),
        ],
      ),
      body: Row(
        children: <Widget>[
          // 日付一覧
          Container(
            color: Colors.orange,
            child: const Column(
              children: <Widget>[
                Text("0000/00/00"),
                Divider(),
                Text("0000/00/00"),
                Divider(),
              ],
            ),
          ),
          Container(
            color: Colors.orange[100],
            child: Column(
              children: <Widget>[
                Text("メモの一行目1"),
                Divider(),
                Text("メモの一行目2"),
                Divider(),
              ],
            ),
          ),
          Container(
            child: Flexible(
              child: Text("メモの本文"),
            ),
          )
        ],
      ),
    );
  }
}
