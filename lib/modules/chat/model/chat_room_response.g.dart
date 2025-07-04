// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatRoomResponse _$ChatRoomResponseFromJson(Map<String, dynamic> json) =>
    _ChatRoomResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      category: $enumDecode(_$ChatRoomCategoryEnumMap, json['category']),
      participantCount: (json['participantCount'] as num).toInt(),
    );

Map<String, dynamic> _$ChatRoomResponseToJson(_ChatRoomResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': _$ChatRoomCategoryEnumMap[instance.category]!,
      'participantCount': instance.participantCount,
    };

const _$ChatRoomCategoryEnumMap = {
  ChatRoomCategory.literature: 'LITERATURE',
  ChatRoomCategory.humanitiesSociety: 'HUMANITIES_SOCIETY',
  ChatRoomCategory.scienceTechnology: 'SCIENCE_TECHNOLOGY',
  ChatRoomCategory.artHobby: 'ART_HOBBY',
  ChatRoomCategory.childrenYouth: 'CHILDREN_YOUTH',
  ChatRoomCategory.bestseller: 'BESTSELLER',
};
