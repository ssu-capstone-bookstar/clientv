import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/theme/app_style.dart';
import '../../../../gen/colors.gen.dart';

typedef GridItemBuilder<TItem> = Widget Function(TItem item);
typedef SliverDividerBuilder = Widget Function();
typedef ListExtractor<T, TItem> = List<TItem> Function(T data);

class BookCoverGridView<T, TItem> extends StatelessWidget {
  const BookCoverGridView({
    super.key,
    required this.asyncValue,
    required this.itemBuilder,
    required this.crossAxisCount,
    required this.listBuilder,
    this.hasNext = false,
    this.loadingBuilder,
    this.errorBuilder,
    this.emptyBuilder,
    this.dividerBuilder,
    this.scrollController,
    this.gridPadding = const EdgeInsets.only(top: 20),
    this.itemPadding = const EdgeInsets.symmetric(horizontal: 5),
    this.crossAxisSpacing = 16,
    this.mainAxisSpacing = 0,
    this.childAspectRatio = 0.65,
  });

  final AsyncValue<T> asyncValue;
  final GridItemBuilder<TItem> itemBuilder;
  final ListExtractor<T, TItem> listBuilder;
  final int crossAxisCount;
  final bool hasNext;
  final Widget Function()? loadingBuilder;
  final Widget Function(Object error, StackTrace stackTrace)? errorBuilder;
  final Widget Function()? emptyBuilder;
  final SliverDividerBuilder? dividerBuilder;
  final ScrollController? scrollController;
  final EdgeInsets gridPadding;
  final EdgeInsets itemPadding;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return asyncValue.when(
      data: (data) {
        final items = listBuilder(data);
        if (items.isEmpty) {
          return emptyBuilder?.call() ??
              Center(
                child: Text('검색 결과가 없습니다.',
                    style: AppTexts.b8.copyWith(color: ColorName.g3)),
              );
        }

        final rowCount = (items.length / crossAxisCount).ceil();

        return Padding(
          padding: gridPadding,
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              for (int row = 0; row < rowCount; row++) ...[
                SliverPadding(
                  padding: itemPadding,
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final itemIndex = row * crossAxisCount + index;
                        if (itemIndex >= items.length) return const SizedBox();
                        return itemBuilder(items[itemIndex]);
                      },
                      childCount: crossAxisCount,
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      crossAxisSpacing: crossAxisSpacing,
                      mainAxisSpacing: mainAxisSpacing,
                      childAspectRatio: childAspectRatio,
                    ),
                  ),
                ),
                if (row < rowCount || hasNext)
                  SliverToBoxAdapter(
                    child: dividerBuilder?.call() ??
                        Padding(
                          padding: EdgeInsets.only(top: 4.0, bottom: 30),
                          child: Divider(
                            thickness: 7,
                            color: AppColors.DIVIDER_COLOR,
                            radius: BorderRadius.circular(5.0),
                          ),
                        ),
                  ),
              ],
              if (hasNext)
                SliverToBoxAdapter(
                  child: loadingBuilder?.call() ??
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          child: CircularProgressIndicator(),
                        ),
                      ),
                ),
            ],
          ),
        );
      },
      error: errorBuilder ??
          (e, _) => Center(child: Text('에러가 발생했습니다.\nerror: $e')),
      loading: loadingBuilder ??
          () => const Center(child: CircularProgressIndicator()),
    );
  }
}
