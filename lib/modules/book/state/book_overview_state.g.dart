// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_overview_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookOverviewState _$BookOverviewStateFromJson(Map<String, dynamic> json) =>
    _BookOverviewState(
      overview: json['overview'] == null
          ? const BookOverviewResponse()
          : BookOverviewResponse.fromJson(
              json['overview'] as Map<String, dynamic>),
      detail: json['detail'] == null
          ? const BookDetailResponse()
          : BookDetailResponse.fromJson(json['detail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookOverviewStateToJson(_BookOverviewState instance) =>
    <String, dynamic>{
      'overview': instance.overview,
      'detail': instance.detail,
    };
