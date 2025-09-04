import 'package:book/common/components/custom_list_view.dart';
import 'package:book/common/components/text_field/search_text_field.dart';
import 'package:book/common/theme/style/app_paddings.dart';
import 'package:book/common/theme/style/app_texts.dart';
import 'package:book/gen/assets.gen.dart';
import 'package:book/modules/book_log/view_model/search_user_view_model.dart';
import 'package:book/modules/reading_diary/model/search_user_response.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/colors.gen.dart';

class BookLogSearchScreen extends ConsumerStatefulWidget {
  const BookLogSearchScreen({super.key});

  @override
  ConsumerState<BookLogSearchScreen> createState() =>
      _BookLogSearchScreenState();
}

class _BookLogSearchScreenState extends ConsumerState<BookLogSearchScreen> {
  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _disabledSearch = false;

  @override
  void initState() {
    super.initState();
    _textController.addListener(() {
      setState(() {});
    });
  }

  void _searchUser() async {
    if (_textController.text.isNotEmpty) {
      final notifier = ref.read(searchUserViewModelProvider.notifier);
      setState(() {
        _disabledSearch = true;
      });
      await notifier.searchUsers(_textController.text);
      setState(() {
        _disabledSearch = false;
      });
    }
  }

  void _unFocus() => _focusNode.unfocus();

  void _onTapUser(int memberId) {
    context.push("/book-log/feed/$memberId");
  }

  @override
  void dispose() {
    _textController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(searchUserViewModelProvider);

    return GestureDetector(
      onTap: _unFocus,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("유저 검색"),
        ),
        body: Padding(
          padding: AppPaddings.SCREEN_BODY_PADDING,
          child: Column(
            children: [
              _buildSearchUser(
                textController: _textController,
                focusNode: _focusNode,
                disabledTap: _disabledSearch,
                onTapSuffixIcon: () {
                  _unFocus();
                  _searchUser();
                },
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: state.when(
                      data: (data) {
                        return _buildUserList(
                          users: data.users,
                          onTapUser: _onTapUser,
                        );
                      },
                      error: _error("유저 검색 정보를 불러올 수 없습니다."),
                      loading: _loading))
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchUser({
    required TextEditingController textController,
    required FocusNode focusNode,
    bool disabledTap = false,
    required Function() onTapSuffixIcon,
  }) {
    return SearchTextField(
      controller: textController,
      focusNode: focusNode,
      hintText: '독서 습관이 궁금한 유저가 있나요?',
      hintStyle: AppTexts.b6.copyWith(color: ColorName.g3),
      suffixIcon: textController.text.isNotEmpty
          ? Assets.images.icSearchColored3x.image(scale: 3)
          : Assets.images.icSearchUncolored3x.image(scale: 3),
        onSubmitted: disabledTap ? null : (value) => onTapSuffixIcon(),
      onTapSuffixIcon: disabledTap ? null : onTapSuffixIcon,
    );
  }

  Widget _buildUserList(
      {required List<SearchUserResponse> users,
      required Function(int) onTapUser}) {
    return CustomListView(
      emptyIcon: Assets.icons.icBookpickSearchCharacter.svg(),
      emptyText: '검색 결과가 없습니다.',
      isEmpty: users.isEmpty,
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return GestureDetector(
          onTap: () => onTapUser(user.memberId),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 46,
                height: 46,
                child: CircleAvatar(
                  backgroundColor: ColorName.g7,
                  backgroundImage: user.profileImg.isNotEmpty
                      ? CachedNetworkImageProvider(
                          user.profileImg,
                        )
                      : null,
                  child: user.profileImg.isEmpty
                      ? const Icon(Icons.person, size: 32, color: ColorName.g5)
                      : null,
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                  child: Text(
                "@${user.nickName}",
                style: AppTexts.b5.copyWith(color: ColorName.w1),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => SizedBox(
        height: 20,
      ),
    );
  }

  Widget _loading() => const Center(child: CircularProgressIndicator());
  Widget Function(Object, StackTrace) _error(String msg) => (e, st) =>
      Center(child: Text(msg, style: TextStyle(color: ColorName.g3)));
}
