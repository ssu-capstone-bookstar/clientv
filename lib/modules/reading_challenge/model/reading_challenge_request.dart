import 'package:freezed_annotation/freezed_annotation.dart';

part 'reading_challenge_request.freezed.dart';
part 'reading_challenge_request.g.dart';

@freezed
abstract class ReadingChallengeRequest with _$ReadingChallengeRequest {
  const factory ReadingChallengeRequest({
    required int bookId,
    required int totalPages,
  }) = _ReadingChallengeRequest;

  factory ReadingChallengeRequest.fromJson(Map<String, dynamic> json) =>
      _$ReadingChallengeRequestFromJson(json);
}
