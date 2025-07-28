// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_diary_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReportDiaryRequest _$ReportDiaryRequestFromJson(Map<String, dynamic> json) =>
    _ReportDiaryRequest(
      readingDiaryId: (json['readingDiaryId'] as num).toInt(),
      reportType: $enumDecode(_$ReportTypeEnumMap, json['reportType']),
      content: json['content'] as String,
    );

Map<String, dynamic> _$ReportDiaryRequestToJson(_ReportDiaryRequest instance) =>
    <String, dynamic>{
      'readingDiaryId': instance.readingDiaryId,
      'reportType': _$ReportTypeEnumMap[instance.reportType]!,
      'content': instance.content,
    };

const _$ReportTypeEnumMap = {
  ReportType.OBSCENE_AND_SEXUALLY_SUGGESTIVE_CONTENT:
      'OBSCENE_AND_SEXUALLY_SUGGESTIVE_CONTENT',
  ReportType.HATE_SPEECH_AND_DISPARAGING_REMARKS:
      'HATE_SPEECH_AND_DISPARAGING_REMARKS',
  ReportType.FALSE_INFORMATION_AND_FRAUD: 'FALSE_INFORMATION_AND_FRAUD',
  ReportType.VIOLENT_AND_SELF_HARM_THREATENING_CONTENT:
      'VIOLENT_AND_SELF_HARM_THREATENING_CONTENT',
  ReportType.ILLEGAL_FILMING_AND_DRUGS_GAMBLING:
      'ILLEGAL_FILMING_AND_DRUGS_GAMBLING',
  ReportType.SPAM_AND_ADVERTISING: 'SPAM_AND_ADVERTISING',
  ReportType.OTHER: 'OTHER',
};
