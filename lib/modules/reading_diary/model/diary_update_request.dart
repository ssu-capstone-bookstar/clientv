import 'package:bookstar/common/models/image_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'diary_update_request.freezed.dart';
part 'diary_update_request.g.dart';

@freezed
abstract class DiaryUpdateRequest with _$DiaryUpdateRequest {
  const factory DiaryUpdateRequest({
    @Default('') String content,
    @Default([]) List<ImageRequest> images,
  }) = _DiaryUpdateRequest;

  factory DiaryUpdateRequest.fromJson(Map<String, dynamic> json) => _$DiaryUpdateRequestFromJson(json);
}
