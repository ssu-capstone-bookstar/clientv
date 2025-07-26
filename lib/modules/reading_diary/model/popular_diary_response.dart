import 'package:freezed_annotation/freezed_annotation.dart';
import 'related_diary_thumbnail.dart';

part 'popular_diary_response.freezed.dart';
part 'popular_diary_response.g.dart';

@freezed
abstract class PopularDiaryResponse with _$PopularDiaryResponse {
  const factory PopularDiaryResponse({
    required List<RelatedDiaryThumbnail> content,
    required int page,
    required int size,
    required bool hasNext,
  }) = _PopularDiaryResponse;

  factory PopularDiaryResponse.fromJson(Map<String, dynamic> json) =>
      _$PopularDiaryResponseFromJson(json);
}
