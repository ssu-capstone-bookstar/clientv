// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_book_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LikeBookResponse _$LikeBookResponseFromJson(Map<String, dynamic> json) =>
    _LikeBookResponse(
      bookId: (json['bookId'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      bookCover: json['bookCover'] as String? ?? '',
      pubDate: json['pubDate'] as String? ?? '',
      author: json['author'] as String? ?? '',
      publisher: json['publisher'] as String? ?? '',
    );

Map<String, dynamic> _$LikeBookResponseToJson(_LikeBookResponse instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'title': instance.title,
      'bookCover': instance.bookCover,
      'pubDate': instance.pubDate,
      'author': instance.author,
      'publisher': instance.publisher,
    };
