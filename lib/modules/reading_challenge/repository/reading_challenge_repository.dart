import 'package:book/common/models/response_form.dart';
import 'package:book/infra/network/dio_client.dart';
import 'package:book/modules/reading_challenge/model/challenge_creation_response.dart';
import 'package:book/modules/reading_challenge/model/challenge_progress_request.dart';
import 'package:book/modules/reading_challenge/model/challenge_progress_response.dart';
import 'package:book/modules/reading_challenge/model/reading_challenge_request.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/challenge_detail_response.dart';
import '../model/challenge_response.dart';
import '../model/rating_request.dart';

part 'reading_challenge_repository.g.dart';

@Riverpod(keepAlive: true)
ReadingChallengeRepository readingChallengeRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  return ReadingChallengeRepository(dio);
}

@RestApi()
abstract class ReadingChallengeRepository {
  factory ReadingChallengeRepository(Dio dio, {String baseUrl}) =
      _ReadingChallengeRepository;

  @POST('/api/v2/reading-challenges')
  Future<ResponseForm<ChallengeCreationResponse>> createChallenge(
    @Body() ReadingChallengeRequest request,
  );

  @POST('/api/v2/reading-challenges/{challengeId}/progress')
  Future<ResponseForm<ChallengeProgressResponse>> updateChallengeProgress(
    @Path('challengeId') int challengeId,
    @Body() ChallengeProgressRequest request,
  );

  @GET('/api/v2/reading-challenges/ongoing')
  Future<ResponseForm<List<ChallengeResponse>>> getOngoingChallenges();

  @GET('/api/v2/reading-challenges/completed')
  Future<ResponseForm<List<ChallengeResponse>>> getCompletedChallenges();

  @GET('/api/v2/reading-challenges/abandoned')
  Future<ResponseForm<List<ChallengeResponse>>> getAbandonedChallenges();

  @GET('/api/v2/reading-challenges/members/{memberId}')
  Future<ResponseForm<List<ChallengeResponse>>> getChallengesByMember(
    @Path('memberId') int memberId,
  );

  @POST('/api/v2/reading-challenges/{challengeId}/complete')
  Future<ResponseForm<dynamic>> completeChallenge(
    @Path('challengeId') int challengeId,
    @Body() RatingRequest request,
  );

  @POST('/api/v2/reading-challenges/{challengeId}/restart')
  Future<ResponseForm<ChallengeResponse>> restartChallenge(
    @Path('challengeId') int challengeId,
  );

  @POST('/api/v2/reading-challenges/{challengeId}/abandon')
  Future<ResponseForm<dynamic>> abandonChallenge(
    @Path('challengeId') int challengeId,
  );

  @DELETE('/api/v2/reading-challenges/{challengeId}')
  Future<ResponseForm<dynamic>> deleteChallenge(
    @Path('challengeId') int challengeId,
  );

  @GET('/api/v2/reading-challenges/books/{bookId}')
  Future<ResponseForm<ChallengeDetailResponse>> getChallengeByBookId(
    @Path('bookId') String bookId,
  );

  @GET('/api/v2/reading-challenges/exists/books/{bookId}')
  Future<ResponseForm<bool>> checkChallengeExists(
    @Path('bookId') String bookId,
  );
}
