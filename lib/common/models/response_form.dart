import 'package:book/common/models/status_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_form.freezed.dart';
part 'response_form.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class ResponseForm<T> with _$ResponseForm<T> {
  const factory ResponseForm({
    @Default('') String status,
    required StatusResponse statusResponse,
    required T data,
  }) = _ResponseForm;

  factory ResponseForm.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ResponseFormFromJson(json, fromJsonT);

  static T empty<T>(Object? json) => json as T;
}
