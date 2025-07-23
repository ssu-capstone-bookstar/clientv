import 'package:freezed_annotation/freezed_annotation.dart';

import 'my_diary_thumbnail.dart';

part 'my_diary_state.freezed.dart';

@freezed
abstract class MyDiaryState with _$MyDiaryState {
  const factory MyDiaryState({
    @Default([]) List<MyDiaryThumbnail> diaries,
    int? nextCursor,
    Object? nextSubCursor,
    @Default(true) bool hasNext,
  }) = _MyDiaryState;
}
