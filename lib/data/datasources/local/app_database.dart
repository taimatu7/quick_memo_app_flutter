import 'package:quick_memo_app_flutter/data/datasources/local/schema.dart';
import 'package:realm/realm.dart';

class AppDatabase {
  late Realm realm;
  AppDatabase() {
    List<SchemaObject> schemaObjects = [
      MemoModel.schema,
      TagModel.schema,
    ];
    final config = Configuration.local(schemaObjects);
    realm = Realm(config);
  }
}
