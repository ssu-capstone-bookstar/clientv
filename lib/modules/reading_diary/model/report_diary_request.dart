import 'package:book/modules/book_log/view_model/book_log_view_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_diary_request.freezed.dart';
part 'report_diary_request.g.dart';

@freezed
abstract class ReportDiaryRequest with _$ReportDiaryRequest {
  const factory ReportDiaryRequest({
    required int readingDiaryId,
    required ReportType reportType,
    required String content,
  }) = _ReportDiaryRequest;

  factory ReportDiaryRequest.fromJson(Map<String, dynamic> json) => _$ReportDiaryRequestFromJson(json);
}
