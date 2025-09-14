import 'package:bookstar/common/components/custom_list_view.dart';
import 'package:bookstar/common/components/text_field/search_text_field.dart';
import 'package:bookstar/common/theme/style/app_paddings.dart';
import 'package:bookstar/common/theme/style/app_texts.dart';
import 'package:bookstar/gen/assets.gen.dart';
import 'package:bookstar/modules/book_log/view_model/search_user_history_storage.dart';
import 'package:bookstar/modules/book_log/view_model/search_user_view_model.dart';
import 'package:bookstar/modules/reading_diary/model/search_user_response.dart';
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

  void _onTapUser(SearchUserResponse user) async {
    final notifier = ref.read(searchUserViewModelProvider.notifier);
    await notifier.onTapUser(nickName: user.nickName, memberId: user.memberId);
    if (!mounted) return;
    context.push("/book-log/thumbnail/${user.memberId}");
  }

  Future<void> _onTapHistory(UserSearchHistory history) async {
    context.push("/book-log/thumbnail/${history.memberId}");
  }

  Future<void> _onRemoveHistory(UserSearchHistory history) async {
    final notifier = ref.read(searchUserViewModelProvider.notifier);
    await notifier.removeHistory(
      memberId: history.memberId,
    );
    setState(() {});
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
    final isNotEmptyText = _textController.text.isNotEmpty;

    return GestureDetector(
      onTap: _unFocus,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("책로그"),
          backgroundColor: ColorName.dim3,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                _unFocus();
                context.pop();
              },
            ),
          ],
        ),
        backgroundColor: ColorName.dim3.withValues(alpha: 0.7),
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
                        return isNotEmptyText
                            ? _buildUserList(
                                users: data.users,
                                onTapUser: _onTapUser,
                              )
                            : _buildSearchHistory(
                                history: data.history,
                                onTapHistory: _onTapHistory,
                                onRemoveHistory: _onRemoveHistory,
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
      required Function(SearchUserResponse) onTapUser}) {
    return CustomListView(
      emptyIcon: Assets.icons.icBookpickSearchCharacter.svg(),
      emptyText: '검색 결과가 없습니다.',
      isEmpty: users.isEmpty,
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return GestureDetector(
          onTap: () => onTapUser(user),
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

  Widget _buildSearchHistory(
      {required List<UserSearchHistory> history,
      required Function(UserSearchHistory) onTapHistory,
      required Function(UserSearchHistory) onRemoveHistory}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("최근 검색", style: AppTexts.b10.copyWith(color: ColorName.g1)),
        Expanded(
          child: CustomListView(
            emptyIcon: Assets.icons.icBookpickSearchCharacter.svg(),
            emptyText: '검색 기록이 없습니다.',
            isEmpty: history.isEmpty,
            itemCount: history.length,
            itemBuilder: (context, index) {
              final item = history[index];
              return ListTile(
                title: GestureDetector(
                  onTap: () => onTapHistory(item),
                  child: Expanded(
                      child: Text(
                    "@${item.nickName}",
                    style: AppTexts.b5.copyWith(color: ColorName.w1),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )),
                ),
                trailing: GestureDetector(
                  child: Icon(Icons.clear),
                  onTap: () => onRemoveHistory(item),
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox.shrink(),
          ),
        ),
      ],
    );
  }

  Widget _loading() => const Center(child: CircularProgressIndicator());
  Widget Function(Object, StackTrace) _error(String msg) => (e, st) =>
      Center(child: Text(msg, style: TextStyle(color: ColorName.g3)));
}
