import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_room_response.freezed.dart';
part 'chat_room_response.g.dart';

@JsonEnum(valueField: 'value')
enum ChatRoomCategory {
  literature('LITERATURE'),
  humanitiesSociety('HUMANITIES_SOCIETY'),
  scienceTechnology('SCIENCE_TECHNOLOGY'),
  artHobby('ART_HOBBY'),
  childrenYouth('CHILDREN_YOUTH'),
  bestseller('BESTSELLER');

  const ChatRoomCategory(this.value);
  final String value;
}

@freezed
abstract class ChatRoomResponse with _$ChatRoomResponse {
  const factory ChatRoomResponse({
    required int id,
    required String name,
    required ChatRoomCategory category,
    required int participantCount,
  }) = _ChatRoomResponse;

  factory ChatRoomResponse.fromJson(Map<String, dynamic> json) => _$ChatRoomResponseFromJson(json);
}
