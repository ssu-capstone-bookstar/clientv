import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../reading_diary/view/widgets/related_diaries_widget.dart';
import '../../../reading_diary/view_model/related_diaries_view_model.dart';
import '../../view_model/book_overview_view_model.dart';
import '../widgets/book_info_widget.dart';

class BookOverviewScreen extends ConsumerStatefulWidget {
  const BookOverviewScreen({
    super.key,
    required this.bookId,
  });

  final int bookId;

  @override
  ConsumerState<BookOverviewScreen> createState() => _BookOverviewScreenState();
}

class _BookOverviewScreenState extends ConsumerState<BookOverviewScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 300) {
      ref.read(relatedDiariesViewModelProvider(widget.bookId).notifier).fetchNextPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    final bookState = ref.watch(bookOverviewViewModelProvider(widget.bookId));

    return bookState.when(
      data: (book) {
        return CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: BookInfoWidget(book: book),
              ),
            ),
            RelatedDiariesWidget(bookId: widget.bookId),
          ],
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(
        child: Text('오류가 발생했습니다: $error'),
      ),
    );
  }
}
