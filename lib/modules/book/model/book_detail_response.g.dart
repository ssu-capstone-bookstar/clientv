// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookDetailResponse _$BookDetailResponseFromJson(Map<String, dynamic> json) =>
    _BookDetailResponse(
      id: (json['id'] as num).toInt(),
      aladinBookId: (json['aladingBookId'] as num).toInt(),
      title: json['title'] as String,
      author: json['author'] as String,
      isbn: json['isbn'] as String,
      isbn13: json['isbn13'] as String,
      categoryName: json['categoryName'] as String,
      description: json['description'] as String,
      publisher: json['publisher'] as String,
      publishedDate: DateTime.parse(json['publishedDate'] as String),
      page: (json['page'] as num).toInt(),
      toc: (json['toc'] as num?)?.toInt(),
      imageUrl: json['imageUrl'] as String,
      star: (json['star'] as num).toDouble(),
    );

Map<String, dynamic> _$BookDetailResponseToJson(_BookDetailResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'aladingBookId': instance.aladinBookId,
      'title': instance.title,
      'author': instance.author,
      'isbn': instance.isbn,
      'isbn13': instance.isbn13,
      'categoryName': instance.categoryName,
      'description': instance.description,
      'publisher': instance.publisher,
      'publishedDate': instance.publishedDate.toIso8601String(),
      'page': instance.page,
      'toc': instance.toc,
      'imageUrl': instance.imageUrl,
      'star': instance.star,
    };
