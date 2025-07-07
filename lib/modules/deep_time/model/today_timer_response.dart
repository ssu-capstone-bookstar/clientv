import 'package:freezed_annotation/freezed_annotation.dart';

part 'today_timer_response.freezed.dart';
part 'today_timer_response.g.dart';

@freezed
abstract class TodayTimerResponse with _$TodayTimerResponse {
  const factory TodayTimerResponse({
    @Default(0) int totalSeconds,
  }) = _TodayTimerResponse;

  factory TodayTimerResponse.fromJson(Map<String, dynamic> json) =>
      _$TodayTimerResponseFromJson(json);
}
