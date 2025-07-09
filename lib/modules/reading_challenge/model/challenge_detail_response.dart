import 'package:book/modules/search/model/search_book_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'challenge_detail_response.freezed.dart';
part 'challenge_detail_response.g.dart';

@freezed
abstract class ChallengeDetailResponse with _$ChallengeDetailResponse {
  const factory ChallengeDetailResponse({
    required int totalPages,
    required String challengeId,
    required int lastReadPage,
  }) = _ChallengeDetailResponse;

  factory ChallengeDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ChallengeDetailResponseFromJson(json);
}
