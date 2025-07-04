// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_overview_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookOverviewResponse _$BookOverviewResponseFromJson(
        Map<String, dynamic> json) =>
    _BookOverviewResponse(
      bookId: (json['bookId'] as num?)?.toInt() ?? 0,
      title: json['title'] as String,
      author: json['author'] as String,
      cover: json['cover'] as String,
      readingDiaryCount: (json['readingDiaryCount'] as num).toInt(),
      isbn: json['isbn'] as String,
      publisher: json['publisher'] as String,
      star: (json['star'] as num).toDouble(),
      publishedDate: json['publishedDate'] as String,
    );

Map<String, dynamic> _$BookOverviewResponseToJson(
        _BookOverviewResponse instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'title': instance.title,
      'author': instance.author,
      'cover': instance.cover,
      'readingDiaryCount': instance.readingDiaryCount,
      'isbn': instance.isbn,
      'publisher': instance.publisher,
      'star': instance.star,
      'publishedDate': instance.publishedDate,
    };
