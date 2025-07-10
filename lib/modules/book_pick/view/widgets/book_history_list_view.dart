import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/theme/style/app_texts.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';

typedef ItemWidgetBuilder<TItem> = Widget Function(TItem item);
typedef ItemTapCallback<TItem> = void Function(TItem item);

class BookHistoryListView<T, TItem> extends StatelessWidget {
  const BookHistoryListView({
    super.key,
    required this.asyncValue,
    required this.itemBuilder,
    required this.listBuilder,
    this.onTap,
    this.onDelete,
    this.emptyBuilder,
    this.loadingBuilder,
    this.errorBuilder,
    this.separatorBuilder,
  });

  final AsyncValue<T> asyncValue;
  final List<TItem> Function(T data) listBuilder;
  final ItemWidgetBuilder<TItem> itemBuilder;
  final ItemTapCallback<TItem>? onTap;
  final ItemTapCallback<TItem>? onDelete;
  final Widget Function()? emptyBuilder;
  final Widget Function()? loadingBuilder;
  final Widget Function(Object, StackTrace)? errorBuilder;
  final Widget Function(BuildContext, int)? separatorBuilder;

  @override
  Widget build(BuildContext context) {
    return asyncValue.when(
      data: (data) {
        final items = listBuilder(data);

        if (items.isEmpty) {
          return emptyBuilder?.call() ??
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Assets.icons.icBookpickSearchCharacter.svg(),
                    const SizedBox(height: 12),
                    Text(
                      '어떤 도서를 찾고 계신가요?',
                      style: AppTexts.b8.copyWith(color: ColorName.g3),
                    ),
                  ],
                ),
              );
        }

        return ListView.separated(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return GestureDetector(
              onTap: () => onTap?.call(item),
              child: itemBuilder(item),
            );
          },
          separatorBuilder: separatorBuilder ?? (context, index) => const Divider(height: 1),
        );
      },
      loading: loadingBuilder ?? () => const Center(child: CircularProgressIndicator()),
      error: errorBuilder ?? (error, _) => const Center(child: Text('검색 기록을 불러오는데 실패했습니다.')),
    );
  }
}
