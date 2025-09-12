import 'package:bookstar/modules/book/model/book_summary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'challenge_creation_response.freezed.dart';
part 'challenge_creation_response.g.dart';

@freezed
abstract class ChallengeCreationResponse with _$ChallengeCreationResponse {
  const factory ChallengeCreationResponse({
    @Default(0) int challengeId,
    required BookSummary book,
    @Default(0) int currentPage,
    @Default(0) int totalPages,
    @Default(0.0) double progressPercent,
    @Default(false) bool completed,
    @Default(false) bool abandoned,
    DateTime? lastReadAt,
    required int progressId,
  }) = _ChallengeCreationResponse;

  factory ChallengeCreationResponse.fromJson(Map<String, dynamic> json) =>
      _$ChallengeCreationResponseFromJson(json);
}
