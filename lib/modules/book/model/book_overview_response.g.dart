// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_overview_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookOverviewResponse _$BookOverviewResponseFromJson(
        Map<String, dynamic> json) =>
    _BookOverviewResponse(
      id: (json['id'] as num?)?.toInt() ?? -1,
      title: json['title'] as String? ?? '',
      author: json['author'] as String? ?? '',
      cover: json['cover'] as String? ?? '',
      readingDiaryCount: (json['readingDiaryCount'] as num?)?.toInt() ?? 0,
      isbn: json['isbn'] as String? ?? '',
      publisher: json['publisher'] as String? ?? '',
      publishedDate: json['publishedDate'] as String? ?? '',
      aladinUrl: json['aladinUrl'] as String? ?? '',
      star: (json['star'] as num?)?.toDouble() ?? 0.0,
      starFromMe: (json['starFromMe'] as num?)?.toDouble() ?? 0.0,
      liked: json['liked'] as bool? ?? false,
    );

Map<String, dynamic> _$BookOverviewResponseToJson(
        _BookOverviewResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'cover': instance.cover,
      'readingDiaryCount': instance.readingDiaryCount,
      'isbn': instance.isbn,
      'publisher': instance.publisher,
      'publishedDate': instance.publishedDate,
      'aladinUrl': instance.aladinUrl,
      'star': instance.star,
      'starFromMe': instance.starFromMe,
      'liked': instance.liked,
    };
