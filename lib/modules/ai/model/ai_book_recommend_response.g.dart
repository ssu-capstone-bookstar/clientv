// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_book_recommend_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AiBookRecommendResponse _$AiBookRecommendResponseFromJson(
        Map<String, dynamic> json) =>
    _AiBookRecommendResponse(
      id: (json['id'] as num?)?.toInt() ?? 0,
      aladinBookId: (json['aladinBookId'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      author: json['author'] as String? ?? '',
      isbn: json['isbn'] as String? ?? '',
      isbn13: json['isbn13'] as String? ?? '',
      categoryName: json['categoryName'] as String? ?? '',
      description: json['description'] as String? ?? '',
      publisher: json['publisher'] as String? ?? '',
      publishedDate: json['publishedDate'] as String? ?? '',
      imageUrl: json['imageUrl'] as String? ?? '',
      isLiked: json['isLiked'] as bool? ?? false,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$AiBookRecommendResponseToJson(
        _AiBookRecommendResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'aladinBookId': instance.aladinBookId,
      'title': instance.title,
      'author': instance.author,
      'isbn': instance.isbn,
      'isbn13': instance.isbn13,
      'categoryName': instance.categoryName,
      'description': instance.description,
      'publisher': instance.publisher,
      'publishedDate': instance.publishedDate,
      'imageUrl': instance.imageUrl,
      'isLiked': instance.isLiked,
      'createdDate': instance.createdDate?.toIso8601String(),
      'updatedDate': instance.updatedDate?.toIso8601String(),
    };
