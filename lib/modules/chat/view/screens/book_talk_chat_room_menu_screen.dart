import 'package:bookstar/common/components/base_screen.dart';
import 'package:bookstar/common/components/button/cta_button_s.dart';
import 'package:bookstar/common/components/dialog/custom_dialog.dart';
import 'package:bookstar/common/theme/style/app_texts.dart';
import 'package:bookstar/gen/assets.gen.dart';
import 'package:bookstar/gen/colors.gen.dart';
import 'package:bookstar/modules/chat/model/chat_participant_item_response.dart';
import 'package:bookstar/modules/chat/view_model/chat_view_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class BookTalkChatRoomMenuScreen extends BaseScreen {
  const BookTalkChatRoomMenuScreen({super.key, required this.roomId});
  final int roomId;

  @override
  BaseScreenState<BookTalkChatRoomMenuScreen> createState() =>
      _BookTalkChatRoomMenuScreenState();
}

class _BookTalkChatRoomMenuScreenState
    extends BaseScreenState<BookTalkChatRoomMenuScreen> {
  @override
  bool enableRefreshIndicator() => false;

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    String roomName = ChatViewModel.categories
        .firstWhere((item) => item.roomId == widget.roomId,
            orElse: () => ChatViewModel.defaultCategory)
        .name;
    return AppBar(
      title: Text(roomName),
    );
  }

  void _showExitChatRoomDialog(BuildContext context, int roomId) {
    showDialog(
        context: context,
        builder: (ctx) {
          return CustomDialog(
            title: '채팅방 나가기',
            content: '채팅방을 나갈까요?',
            icon: Assets.icons.icReadingChallengeChar1.svg(),
            onCancel: () => Navigator.of(ctx).pop(),
            onConfirm: () async {
              await ref
                  .read(chatViewModelProvider.notifier)
                  .leaveChatRoom(roomId);
              if (ctx.mounted) {
                Navigator.of(ctx).pop();
                ctx.go("/book-talk");
              }
            },
            confirmButtonText: '채팅방 나가기',
            cancelButtonText: '닫기',
          );
        });
  }

  @override
  Widget buildBody(BuildContext context) {
    final state = ref.watch(chatViewModelProvider);
    return state.when(
      data: (data) {
        final chatParticipants = data.chatParticipants;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(
                totalParticipantCount: chatParticipants.totalParticipantCount,
                exitChatRoom: () {
                  _showExitChatRoomDialog(context, widget.roomId);
                }),
            Expanded(
              child: CustomScrollView(controller: scrollController, slivers: [
                _buildChatParticipantList(
                    participants: chatParticipants.participants,
                    onTap: (memberId) {
                      context.push(
                          '/book-talk/chat-room/${widget.roomId}/book-log/$memberId');
                    })
              ]),
            )
          ],
        );
      },
      loading: loading,
      error: error("채팅 참여자 정보를 불러올 수 없습니다."),
    );
  }

  Widget _buildHeader({
    required int totalParticipantCount,
    required Function() exitChatRoom,
  }) {
    return Padding(
      padding: EdgeInsetsGeometry.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "채팅 참여자",
                style: AppTexts.h4.copyWith(color: Colors.white),
              ),
              SizedBox(
                height: 8,
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Assets.icons.icPersonCount.svg(height: 12),
                  SizedBox(
                    width: 2,
                  ),
                  Text("$totalParticipantCount",
                      style: AppTexts.b8.copyWith(color: ColorName.g3)),
                ],
              )
            ],
          ),
          CtaButtonS(
            text: '채팅방 나가기',
            onPressed: exitChatRoom,
            width: 71,
          )
        ],
      ),
    );
  }

  Widget _buildChatParticipantList(
      {
        required List<ChatParticipantItemResponse> participants,
        required Function(int memberId) onTap,
      }) {
    return SliverList.separated(
      itemBuilder: (context, index) {
        final item = participants[index];
        return GestureDetector(
          onTap: () => onTap(item.memberId),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: CachedNetworkImage(
                        imageUrl: item.profileImageUrl,
                        width: 58,
                        height: 58,
                        errorWidget: (context, url, error) => Container(),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      item.nickname,
                      style: AppTexts.b8.copyWith(color: ColorName.w1),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "책로그 보기",
                      style: AppTexts.b10.copyWith(color: ColorName.g3),
                    ),
                    Icon(
                      Icons.chevron_right,
                      size: 19,
                      color: ColorName.g3,
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
      itemCount: participants.length,
      separatorBuilder: (context, index) => Divider(
        height: 1,
        color: ColorName.g7,
      ),
    );
  }
}
