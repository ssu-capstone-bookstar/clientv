import 'package:book/common/models/sort_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pageable_object.freezed.dart';
part 'pageable_object.g.dart';

@freezed
abstract class PageableObject with _$PageableObject {
  const factory PageableObject({
    @Default(0) int offset,
    required SortObject sort,
    @Default(false) bool unpaged,
    @Default(0) int pageSize,
    @Default(false) bool paged,
    @Default(0) int pageNumber,
  }) = _PageableObject;

  factory PageableObject.fromJson(Map<String, dynamic> json) =>
      _$PageableObjectFromJson(json);
} 