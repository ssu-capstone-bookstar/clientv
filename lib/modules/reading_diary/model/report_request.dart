import 'package:bookstar/modules/book_log/view_model/book_log_view_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_request.freezed.dart';
part 'report_request.g.dart';

@freezed
abstract class ReportRequest with _$ReportRequest {
  const factory ReportRequest({
    int? readingDiaryId,
    int? reportedMemberId,
    int? diaryCommentId,
    int? chatMessageId,
    required ReportDomain reportDomain,
    required ReportType reportType,
    String? content,
  }) = _ReportRequest;

  factory ReportRequest.fromJson(Map<String, dynamic> json) => _$ReportRequestFromJson(json);
}
