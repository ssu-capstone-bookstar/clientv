import 'package:freezed_annotation/freezed_annotation.dart';

import '../../book/model/book_summary.dart';

part 'challenge_response.freezed.dart';
part 'challenge_response.g.dart';

@freezed
abstract class ChallengeResponse with _$ChallengeResponse {
  const factory ChallengeResponse({
    @Default(0) int challengeId,
    required BookSummary book,
    @Default(0) int currentPage,
    @Default(0) int totalPages,
    @Default(0.0) double progressPercent,
    @Default(false) bool completed,
    @Default(false) bool abandoned,
    DateTime? lastReadAt,
  }) = _ChallengeResponse;

  factory ChallengeResponse.fromJson(Map<String, dynamic> json) =>
      _$ChallengeResponseFromJson(json);
}
