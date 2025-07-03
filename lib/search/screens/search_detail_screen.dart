import 'package:book/common/theme/app_colors.dart';
import 'package:book/gen/assets.gen.dart';
import 'package:book/search/viewmodels/search_viewmodel.dart';
import 'package:book/search/widgets/book_search_result_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SearchDetailScreen extends ConsumerStatefulWidget {
  const SearchDetailScreen({super.key});

  @override
  ConsumerState<SearchDetailScreen> createState() => _SearchDetailScreenState();
}

class _SearchDetailScreenState extends ConsumerState<SearchDetailScreen> {
  final TextEditingController _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _textController.addListener(() {
      setState(() {});
    });
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 300) {
      ref.read(searchViewModelProvider.notifier).fetchNextPage();
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchState = ref.watch(searchViewModelProvider);
    final hasText = _textController.text.isNotEmpty;

    final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: hasText ? AppColors.primaryPurple : Colors.grey.shade300,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('책 찾기'),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: '읽고 싶은 책을 검색해 보세요',
                prefixIcon: const Icon(Icons.search),
                border: outlineInputBorder,
                enabledBorder: outlineInputBorder,
                focusedBorder: outlineInputBorder,
              ),
              onSubmitted: (value) {
                ref.read(searchViewModelProvider.notifier).searchBooks(value);
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: searchState.when(
                data: (data) {
                  if (data.books.isEmpty && _textController.text.isEmpty) {
                    return Center(
                      child: SvgPicture.asset(
                        Assets.icons.icBookpickSearchCharacter,
                        width: 150,
                      ),
                    );
                  }
                  if (data.books.isEmpty && _textController.text.isNotEmpty) {
                    return const Center(child: Text('검색 결과가 없습니다.'));
                  }

                  final books = data.books;
                  final hasNext = data.hasNext;
                  final rowCount = (books.length / 3).ceil();

                  return ListView.separated(
                    controller: _scrollController,
                    itemCount: rowCount + (hasNext ? 1 : 0),
                    itemBuilder: (context, rowIndex) {
                      if (rowIndex == rowCount) {
                        return const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }

                      final startIndex = rowIndex * 3;
                      final List<Widget> rowItems = [];
                      for (int i = 0; i < 3; i++) {
                        final bookIndex = startIndex + i;
                        if (bookIndex < books.length) {
                          rowItems.add(
                            Expanded(
                              child:
                                  BookSearchResultCard(book: books[bookIndex]),
                            ),
                          );
                        } else {
                          rowItems.add(Expanded(child: Container()));
                        }
                        if (i < 2) {
                          rowItems.add(const SizedBox(width: 16));
                        }
                      }

                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: rowItems,
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Divider(height: 1),
                      );
                    },
                  );
                },
                error: (error, stackTrace) =>
                    const Center(child: Text('오류가 발생했습니다.')),
                loading: () => const Center(child: CircularProgressIndicator()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
