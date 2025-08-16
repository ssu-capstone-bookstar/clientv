// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReportRequest _$ReportRequestFromJson(Map<String, dynamic> json) =>
    _ReportRequest(
      readingDiaryId: (json['readingDiaryId'] as num?)?.toInt(),
      reportedMemberId: (json['reportedMemberId'] as num?)?.toInt(),
      diaryCommentId: (json['diaryCommentId'] as num?)?.toInt(),
      chatMessageId: (json['chatMessageId'] as num?)?.toInt(),
      reportDomain: $enumDecode(_$ReportDomainEnumMap, json['reportDomain']),
      reportType: $enumDecode(_$ReportTypeEnumMap, json['reportType']),
      content: json['content'] as String?,
    );

Map<String, dynamic> _$ReportRequestToJson(_ReportRequest instance) =>
    <String, dynamic>{
      'readingDiaryId': instance.readingDiaryId,
      'reportedMemberId': instance.reportedMemberId,
      'diaryCommentId': instance.diaryCommentId,
      'chatMessageId': instance.chatMessageId,
      'reportDomain': _$ReportDomainEnumMap[instance.reportDomain]!,
      'reportType': _$ReportTypeEnumMap[instance.reportType]!,
      'content': instance.content,
    };

const _$ReportDomainEnumMap = {
  ReportDomain.USER: 'USER',
  ReportDomain.READING_DIARY: 'READING_DIARY',
  ReportDomain.DIARY_COMMENT: 'DIARY_COMMENT',
  ReportDomain.CHAT: 'CHAT',
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
