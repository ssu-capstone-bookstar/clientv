import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_participant_item_response.freezed.dart';
part 'chat_participant_item_response.g.dart';

@freezed
abstract class ChatParticipantItemResponse with _$ChatParticipantItemResponse {
  const factory ChatParticipantItemResponse({
    @Default(0) int memberId,
    @Default("") String nickName,
    @Default("") String profileImageUrl,
  }) = _ChatParticipantItemResponse;

  factory ChatParticipantItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatParticipantItemResponseFromJson(json);
}
