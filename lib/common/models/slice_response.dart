import 'package:book/common/models/pageable_object.dart';
import 'package:book/common/models/sort_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'slice_response.freezed.dart';
part 'slice_response.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class SliceResponse<T> with _$SliceResponse<T> {
  const factory SliceResponse({
    required List<T> content,
    required PageableObject pageable,
    @Default(false) bool last,
    @Default(0) int numberOfElements,
    @Default(0) int size,
    @Default(0) int number,
    required SortObject sort,
    @Default(false) bool first,
    @Default(false) bool empty,
  }) = _SliceResponse;

  factory SliceResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$SliceResponseFromJson(json, fromJsonT);
} 