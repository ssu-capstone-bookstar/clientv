// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bestseller_book_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BestsellerBookResponse _$BestsellerBookResponseFromJson(
        Map<String, dynamic> json) =>
    _BestsellerBookResponse(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      author: json['author'] as String? ?? '',
      bookCover: json['bookCover'] as String? ?? '',
      pubDate: json['pubDate'] as String? ?? '',
    );

Map<String, dynamic> _$BestsellerBookResponseToJson(
        _BestsellerBookResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'bookCover': instance.bookCover,
      'pubDate': instance.pubDate,
    };
