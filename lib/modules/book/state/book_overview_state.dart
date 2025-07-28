import 'package:book/modules/book/model/book_overview_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_overview_state.freezed.dart';
part 'book_overview_state.g.dart';

@freezed
abstract class BookOverviewState with _$BookOverviewState {
  const factory BookOverviewState({
    @Default(BookOverviewResponse()) BookOverviewResponse overview,
  }) = _BookOverviewState;

  factory BookOverviewState.fromJson(Map<String, dynamic> json) =>
      _$BookOverviewStateFromJson(json);
}
