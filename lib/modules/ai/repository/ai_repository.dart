import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infra/network/dio_client.dart';
import '../../../common/models/response_form.dart';
import '../model/ai_book_recommend_response.dart';

part 'ai_repository.g.dart';

@Riverpod(keepAlive: true)
AiRepository aiRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  return AiRepository(dio);
}

@RestApi()
abstract class AiRepository {
  factory AiRepository(Dio dio, {String baseUrl}) = _AiRepository;

  @POST('/api/v2/ai/book-recommend')
  Future<ResponseForm<AiBookRecommendResponse>> getBookRecommendation(
    @Field('message') String message,
  );
}
