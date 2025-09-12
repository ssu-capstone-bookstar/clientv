import 'package:bookstar/common/theme/style/app_paddings.dart';
import 'package:bookstar/common/theme/style/app_texts.dart';
import 'package:bookstar/gen/assets.gen.dart';
import 'package:bookstar/gen/colors.gen.dart';
import 'package:bookstar/modules/chat/model/chat_room_response.dart';
import 'package:bookstar/modules/chat/view_model/chat_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class BookTalkScreen extends ConsumerStatefulWidget {
  const BookTalkScreen({super.key});

  @override
  ConsumerState<BookTalkScreen> createState() => _BookTalkScreenState();
}

class _BookTalkScreenState extends ConsumerState<BookTalkScreen> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(chatViewModelProvider);
    return state.when(
      data: (data) {
        final Set<int> myChatRoomIds = data.myChatRooms.map((v) => v.id).toSet();
        return CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverToBoxAdapter(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildCategoryChatRooms(ref, myChatRoomIds,
                    (roomId) => context.push('/book-talk/chat-room/${roomId}')),
                SizedBox(height: 60),
                _buildJoinedChatRooms(data.myChatRooms,
                    (roomId) => context.push('/book-talk/chat-room/${roomId}')),
              ],
            )),
          ],
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Center(child: Text('Error: $err')),
    );
  }

  Widget _buildCategoryChatRooms(
      WidgetRef ref, Set<int> myChatRoomIds, Function(int) goToChatRoom) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('카테고리', style: AppTexts.b3),
        SizedBox(height: 12),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: ChatViewModel.categories
              .map((category) => GestureDetector(
                    onTap: () async {
                      if (!myChatRoomIds.contains(category.roomId)) {
                        await ref
                            .read(chatViewModelProvider.notifier)
                            .joinChatRoom(category.roomId);
                      }
                      goToChatRoom(category.roomId);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: ColorName.g7,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(category.name,
                          style: AppTexts.b8.copyWith(color: ColorName.w3)),
                    ),
                  ))
              .toList(),
        )
      ],
    );
  }

  Widget _buildJoinedChatRooms(
      List<ChatRoomResponse> items, Function(int) goToChatRoom) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('참여한 채팅방', style: AppTexts.b3),
        Text('참여 중인 채팅방을 확인해 보세요',
            style: AppTexts.b10.copyWith(color: ColorName.g2)),
        SizedBox(height: 12),
        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final item = items[index];
            return GestureDetector(
              onTap: () {
                goToChatRoom(item.id);
              },
              child: Container(
                color: Colors.transparent,
                child: _buildJoinedChatRoomItem(item),
              ),
            );
          },
          itemCount: items.length,
          separatorBuilder: (context, index) => Divider(
            height: 1,
            color: ColorName.g7,
          ),
        )
      ],
    );
  }

  Widget _buildJoinedChatRoomItem(ChatRoomResponse item) {
    ChatCategory category = ChatViewModel.categories.firstWhere(
        (v) => v.roomId == item.id,
        orElse: () => ChatViewModel.defaultCategory);

    return Padding(
      padding: AppPaddings.JOINED_CHAT_ROOM_ITEM_PADDING,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              category.icon,
              SizedBox(
                width: 6,
              ),
              Text(item.name, style: AppTexts.b5.copyWith(color: ColorName.w1)),
            ],
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Assets.icons.icPersonCount.svg(height: 12),
              SizedBox(
                width: 2,
              ),
              Text("${item.participantCount}",
                  style: AppTexts.b11.copyWith(color: ColorName.g3)),
            ],
          )
        ],
      ),
    );
  }
}
