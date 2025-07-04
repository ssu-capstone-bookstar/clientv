import 'package:book/book/viewmodels/book_overview_viewmodel.dart';
import 'package:book/book/widgets/book_info_widget.dart';
import 'package:book/book/widgets/related_posts_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookOverviewScreen extends ConsumerWidget {
  const BookOverviewScreen({
    super.key,
    required this.bookId,
  });

  final int bookId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookState = ref.watch(bookOverviewViewModelProvider(bookId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('책픽'),
        centerTitle: true,
      ),
      body: bookState.when(
        data: (book) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BookInfoWidget(book: book),
                const RelatedPostsWidget(),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Text('오류가 발생했습니다: $error'),
        ),
      ),
    );
  }
} 