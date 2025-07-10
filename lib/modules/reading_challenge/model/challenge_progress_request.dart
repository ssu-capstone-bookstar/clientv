import 'package:freezed_annotation/freezed_annotation.dart';

part 'challenge_progress_request.freezed.dart';
part 'challenge_progress_request.g.dart';

@freezed
abstract class ChallengeProgressRequest with _$ChallengeProgressRequest {
  const factory ChallengeProgressRequest({
    required int startPage,
    required int endPage,
  }) = _ChallengeProgressRequest;

  factory ChallengeProgressRequest.fromJson(Map<String, dynamic> json) =>
      _$ChallengeProgressRequestFromJson(json);
} 