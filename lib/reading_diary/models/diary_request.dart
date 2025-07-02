import 'package:book/common/models/image_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'diary_request.freezed.dart';
part 'diary_request.g.dart';

@freezed
abstract class DiaryRequest with _$DiaryRequest {
  const factory DiaryRequest({
    @Default(0) int bookId,
    int? startPage,
    int? endPage,
    @Default('') String content,
    @Default([]) List<ImageRequest> images,
  }) = _DiaryRequest;

  factory DiaryRequest.fromJson(Map<String, dynamic> json) =>
      _$DiaryRequestFromJson(json);
} 