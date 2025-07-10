import 'package:freezed_annotation/freezed_annotation.dart';

part 'challenge_progress_response.freezed.dart';
part 'challenge_progress_response.g.dart';

@freezed
abstract class ChallengeProgressResponse with _$ChallengeProgressResponse {
  const factory ChallengeProgressResponse({
    required int progressId,
  }) = _ChallengeProgressResponse;

  factory ChallengeProgressResponse.fromJson(Map<String, dynamic> json) =>
      _$ChallengeProgressResponseFromJson(json);
}
