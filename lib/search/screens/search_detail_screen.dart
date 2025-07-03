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

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchState = ref.watch(searchViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('책픽'),
        centerTitle: true,
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
              decoration: const InputDecoration(
                hintText: '읽고 싶은 책을 검색해 보세요',
                prefixIcon: Icon(Icons.search),
              ),
              onSubmitted: (value) {
                ref.read(searchViewModelProvider.notifier).searchBooks(value);
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: searchState.when(
                data: (books) {
                  if (books.isEmpty && _textController.text.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            Assets.icons.icBookpickSearchCharacter,
                            width: 150,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            '어떤 도서를 찾고 계신가요?',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(fontSize: 18),
                          ),
                        ],
                      ),
                    );
                  }
                  if (books.isEmpty && _textController.text.isNotEmpty) {
                     return const Center(child: Text('검색 결과가 없습니다.'));
                  }
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 0.5,
                    ),
                    itemCount: books.length,
                    itemBuilder: (context, index) {
                      return BookSearchResultCard(book: books[index]);
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
