import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/colors.gen.dart';
import 'package:book/modules/chat/model/chat_room_response.dart';
import 'package:book/modules/chat/view_model/chat_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatCategory {
  final int roomId;
  final String name;

  const ChatCategory({
    required this.roomId,
    required this.name,
  });
}

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
      data: (data) => CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCategoryChatRooms(),
              SizedBox(height: 60),
              _buildJoinedChatRooms(data.myChatRooms)
            ],
          )),
        ],
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Center(child: Text('Error: $err')),
    );
  }

  Widget _buildCategoryChatRooms() {
    List<ChatCategory> categories = [
      ChatCategory(roomId: 2, name: "문학"),
      ChatCategory(roomId: 3, name: "인문사회"),
      ChatCategory(roomId: 4, name: "과학기술"),
      ChatCategory(roomId: 5, name: "예술취미"),
      ChatCategory(roomId: 6, name: "아동청소년"),
      ChatCategory(roomId: 7, name: "베스트셀러"),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('카테고리', style: AppTexts.b3),
        SizedBox(height: 12),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: categories
              .map((category) => GestureDetector(
                    onTap: () {
                      // TODO: 채팅방로 참가
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

  Widget _buildJoinedChatRooms(List<ChatRoomResponse> items) {
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
            return Text(item.name);
          },
          itemCount: items.length,
          separatorBuilder: (context, index) => Divider(
            height: 1,
          ),
        )
      ],
    );
  }
}
