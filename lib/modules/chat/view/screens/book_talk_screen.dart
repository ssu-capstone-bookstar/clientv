import 'package:bookstar/common/components/base_screen.dart';
import 'package:bookstar/common/components/custom_list_view.dart';
import 'package:bookstar/common/theme/style/app_paddings.dart';
import 'package:bookstar/common/theme/style/app_texts.dart';
import 'package:bookstar/gen/assets.gen.dart';
import 'package:bookstar/gen/colors.gen.dart';
import 'package:bookstar/modules/chat/model/chat_room_response.dart';
import 'package:bookstar/modules/chat/view_model/chat_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class BookTalkScreen extends BaseScreen {
  const BookTalkScreen({super.key});

  @override
  BaseScreenState<BookTalkScreen> createState() => _BookTalkScreenState();
}

class _BookTalkScreenState extends BaseScreenState<BookTalkScreen> {
  @override
  bool enableRefreshIndicator() => true;

  @override
  Future<void> onRefresh() async {
    final notifier = ref.read(chatViewModelProvider.notifier);
    await notifier.initState();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text("책톡", style: AppTexts.b5),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    final state = ref.watch(chatViewModelProvider);
    return state.when(
      data: (data) {
        final Set<int> myChatRoomIds =
            data.myChatRooms.map((v) => v.id).toSet();
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            /** 카테고리 */
            _buildCategoryChatRooms(
                chatRoomIds: myChatRoomIds,
                onTap: (roomId) async {
                  if (!myChatRoomIds.contains(roomId)) {
                    await ref
                        .read(chatViewModelProvider.notifier)
                        .joinChatRoom(roomId);
                  }
                  if (!context.mounted) return;
                  context.push('/book-talk/chat-room/$roomId');
                }),
            SizedBox(height: 60),
            /** 참여한 채팅방 */
            Expanded(
              child: _buildJoinedChatRooms(
                  items: data.myChatRooms,
                  onTap: (roomId) => context.push('/book-talk/chat-room/$roomId')),
            ),
          ]),
        );
      },
      loading: loading,
      error: error("채팅방 정보를 불러올 수 없습니다."),
    );
  }

  Widget _buildCategoryChatRooms(
      {required Set<int> chatRoomIds, required Function(int) onTap}) {
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
                    onTap: () => onTap(category.roomId),
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
      {required List<ChatRoomResponse> items, required Function(int) onTap}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('참여한 채팅방', style: AppTexts.b3),
        Text('참여 중인 채팅방을 확인해 보세요',
            style: AppTexts.b10.copyWith(color: ColorName.g2)),
        SizedBox(height: 12),
        Expanded(
          child: CustomListView(
              emptyIcon: Assets.icons.icBookpickSearchCharacter.svg(),
              emptyText: '검색 결과가 없습니다.',
              isEmpty: items.isEmpty,
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return GestureDetector(
                  onTap: () => onTap(item.id),
                  child: Container(
                    color: Colors.transparent,
                    child: _buildJoinedChatRoomItem(item: item),
                  ),
                );
              },
              separatorBuilder: (context, index) => Divider(
                    height: 1,
                    color: ColorName.g7,
                  )),
        ),
      ],
    );
  }

  Widget _buildJoinedChatRoomItem({required ChatRoomResponse item}) {
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
