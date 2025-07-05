import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_request.freezed.dart';
part 'comment_request.g.dart';

@freezed
abstract class CommentRequest with _$CommentRequest {
  const factory CommentRequest({
    @Default(0) int diaryId,
    required String content,
  }) = _CommentRequest;

  factory CommentRequest.fromJson(Map<String, dynamic> json) => _$CommentRequestFromJson(json);
}
