import 'package:freezed_annotation/freezed_annotation.dart';

part 'sort_object.freezed.dart';
part 'sort_object.g.dart';

@freezed
abstract class SortObject with _$SortObject {
  const factory SortObject({
    @Default(false) bool empty,
    @Default(false) bool sorted,
    @Default(false) bool unsorted,
  }) = _SortObject;

  factory SortObject.fromJson(Map<String, dynamic> json) =>
      _$SortObjectFromJson(json);
} 