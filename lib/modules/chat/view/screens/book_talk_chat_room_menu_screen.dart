import 'package:book/common/components/button/cta_button_l2.dart';
import 'package:book/common/components/dialog/custom_dialog.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/assets.gen.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/chat/model/chat_participant_item_response.dart';
import 'package:book/modules/chat/view_model/chat_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class BookTalkChatRoomMenuScreen extends ConsumerWidget {
  const BookTalkChatRoomMenuScreen({super.key, required this.roomId});
  final int roomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(chatViewModelProvider);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: state.when(
          data: (data) {
            final chatParticipants = data.chatParticipants;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(context, ref, roomId,
                    chatParticipants.totalParticipantCount),
                _buildChatParticipantList(chatParticipants.participants)
              ],
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, stack) => Center(child: Text('Error: $err')),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, WidgetRef ref, int roomId,
      int totalParticipantCount) {
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
          CtaButtonL2(
            text: '채팅방 나가기',
            onPressed: () => _showExitChatRoomDialog(context, ref, roomId),
            width: 71,
            height: 27,
            textStyle: AppTexts.b12,
            defaultTextColor: ColorName.p1,
            borderRadius: 5,
            defaultBackgroundColor: ColorName.g7,
          )
        ],
      ),
    );
  }

  Widget _buildChatParticipantList(
      List<ChatParticipantItemResponse> participants) {
    return Container();
  }

  void _showExitChatRoomDialog(
      BuildContext context, WidgetRef ref, int roomId) {
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
}
