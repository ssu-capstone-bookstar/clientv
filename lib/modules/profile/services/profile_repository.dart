import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/remote/client/dio_client.dart';
import '../../../common/models/response_form.dart';
import '../models/profile_response.dart';
import '../models/profile_with_counts.dart';
import '../models/update_profile_request.dart';

part 'profile_repository.g.dart';

@Riverpod(keepAlive: true)
ProfileRepository profileRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  return ProfileRepository(dio);
}

@RestApi()
abstract class ProfileRepository {
  factory ProfileRepository(Dio dio, {String baseUrl}) = _ProfileRepository;

  @GET('/api/v2/profiles/{memberid}')
  Future<ResponseForm<ProfileWithCounts>> getProfileById(
      @Path('memberid') String memberid);

  @PUT('/api/v2/profiles/me')
  Future<ResponseForm<ProfileResponse>> updateMyProfile(
    @Body() UpdateProfileRequest request,
  );
}
