import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_request.freezed.dart';
part 'timer_request.g.dart';

@freezed
abstract class TimerRequest with _$TimerRequest {
  const factory TimerRequest({
    required int seconds,
  }) = _TimerRequest;

  factory TimerRequest.fromJson(Map<String, dynamic> json) =>
      _$TimerRequestFromJson(json);
}
