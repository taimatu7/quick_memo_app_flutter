import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quick_memo_app_flutter/data/datasources/local/app_database.dart';
import 'package:realm/realm.dart';

// DIのためのProvider

// DB
final appDatabaseProvider = Provider<Realm>((ref) {
  return AppDatabase().realm;
});
