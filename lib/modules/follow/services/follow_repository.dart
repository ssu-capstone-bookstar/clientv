import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/remote/client/dio_client.dart';
import '../../../common/models/response_form.dart';
import '../models/follow_response.dart';

part 'follow_repository.g.dart';

@Riverpod(keepAlive: true)
FollowRepository followRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  return FollowRepository(dio);
}

@RestApi(baseUrl: '/api/v1/follow')
abstract class FollowRepository {
  factory FollowRepository(Dio dio, {String baseUrl}) = _FollowRepository;

  @POST('/{followMemberId}')
  Future<ResponseForm<void>> follow(
    @Path('followMemberId') int followMemberId,
  );

  @DELETE('/{followMemberId}')
  Future<ResponseForm<void>> unfollow(
    @Path('followMemberId') int followMemberId,
  );

  @GET('/following/{memberId}')
  Future<ResponseForm<List<FollowResponse>>> getFollowing(
    @Path('memberId') int memberId,
  );

  @GET('/followers/{memberId}')
  Future<ResponseForm<List<FollowResponse>>> getFollowers(
    @Path('memberId') int memberId,
  );

  @DELETE('/{followerID}/follower')
  Future<ResponseForm<void>> deleteFollower(
    @Path('followerID') int followerID,
  );
}
