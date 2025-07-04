import 'package:freezed_annotation/freezed_annotation.dart';

part 'dual_cursor_page_response.freezed.dart';
part 'dual_cursor_page_response.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class DualCursorPageResponse<T> with _$DualCursorPageResponse<T> {
  const factory DualCursorPageResponse({
    @JsonKey(name: 'data') required List<T> data,
    required int? nextCursor,
    Object? nextSubCursor,
    required bool hasNext,
  }) = _DualCursorPageResponse;

  factory DualCursorPageResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromT) =>
      _$DualCursorPageResponseFromJson(json, fromT);
}
