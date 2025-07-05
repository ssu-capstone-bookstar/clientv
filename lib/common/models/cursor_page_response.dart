import 'package:freezed_annotation/freezed_annotation.dart';

part 'cursor_page_response.freezed.dart';
part 'cursor_page_response.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class CursorPageResponse<T> with _$CursorPageResponse<T> {
  const factory CursorPageResponse({
    required List<T> data,
    int? nextCursor,
    required bool hasNext,
  }) = _CursorPageResponse;

  factory CursorPageResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$CursorPageResponseFromJson(json, fromJsonT);
}
