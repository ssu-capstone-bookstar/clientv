// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookSummary _$BookSummaryFromJson(Map<String, dynamic> json) => _BookSummary(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      author: json['author'] as String? ?? '',
      thumbnailUrl: json['thumbnailUrl'] as String? ?? '',
    );

Map<String, dynamic> _$BookSummaryToJson(_BookSummary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'thumbnailUrl': instance.thumbnailUrl,
    };
