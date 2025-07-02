import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_history_response.freezed.dart';
part 'search_history_response.g.dart';

@freezed
abstract class SearchHistoryResponse with _$SearchHistoryResponse {
  const factory SearchHistoryResponse({
    @Default('') String queries,
  }) = _SearchHistoryResponse;

  factory SearchHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchHistoryResponseFromJson(json);
}
