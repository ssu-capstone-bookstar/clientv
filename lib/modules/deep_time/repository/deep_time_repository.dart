import 'package:book/common/models/response_form.dart';
import 'package:book/infra/network/dio_client.dart';
import 'package:book/modules/deep_time/model/timer_request.dart';
import 'package:book/modules/deep_time/model/today_timer_response.dart';
import 'package:book/modules/deep_time/model/music_list_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'deep_time_repository.g.dart';

@riverpod
DeepTimeRepository deepTimeRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  return DeepTimeRepository(dio, baseUrl: dio.options.baseUrl);
}

@RestApi()
abstract class DeepTimeRepository {
  factory DeepTimeRepository(Dio dio, {String baseUrl}) = _DeepTimeRepository;

  @GET('/api/v2/timer/today')
  Future<ResponseForm<TodayTimerResponse>> getTodayTimer();

  @POST('/api/v2/timer')
  Future<ResponseForm<void>> postTimer(@Body() TimerRequest body);

  @GET('/api/v2/musics')
  Future<ResponseForm<MusicListResponse>> getMusicList();
}
