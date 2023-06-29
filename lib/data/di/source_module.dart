import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quick_memo_app_flutter/data/shared/repository/memo_repository_impl.dart';
import 'package:quick_memo_app_flutter/data/shared/repository/tag_repository_impl.dart';
import 'package:quick_memo_app_flutter/domain/shared/repository/memo_repository.dart';
import 'package:quick_memo_app_flutter/domain/shared/repository/tag_repository.dart';

// DIのためのProvider

// Repository
final memoRepositoryProvider = Provider<MemoRepository>((ref) {
  return MemoRepositoryImpl();
});

final tagRepositoryProvider = Provider<TagRepository>((ref) {
  return TagRepositoryImpl();
});
