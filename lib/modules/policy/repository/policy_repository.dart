import 'package:book/common/models/response_form.dart';
import 'package:book/infra/network/dio_client.dart';
import '../model/policy.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'policy_repository.g.dart';

@Riverpod(keepAlive: false)
PolicyRepository policyRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  return PolicyRepository(dio);
}

@RestApi()
abstract class PolicyRepository {
  factory PolicyRepository(Dio dio, {String baseUrl}) = _PolicyRepository;

  /// 약관 동의 정보 조회
  @GET('/api/v2/policy')
  Future<ResponseForm<Policy>> getPolicy();

  /// 약관 동의 저장/업데이트
  @PUT('/api/v2/policy')
  Future<ResponseForm<void>> updatePolicy(@Body() Policy body);
}
