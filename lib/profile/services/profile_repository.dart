import 'package:book/common/di/dio_client.dart';
import 'package:book/common/models/response_form.dart';
import 'package:book/profile/models/profile_response.dart';
import 'package:book/profile/models/profile_with_counts.dart';
import 'package:book/profile/models/update_profile_request.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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
