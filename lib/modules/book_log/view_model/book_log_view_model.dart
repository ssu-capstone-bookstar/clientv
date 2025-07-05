import '../model/book_log_models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:book/modules/reading_diary/model/diary_response.dart';

part 'book_log_view_model.g.dart';

@riverpod
class BookLogViewModel extends _$BookLogViewModel {
  @override
  List<DiaryResponse> build() {
    // TODO: 실제 구현에서는 repository에서 fetch
    return dummyDiaries;
  }
}
