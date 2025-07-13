import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../theme/style/app_texts.dart';
import '../../../gen/colors.gen.dart';

typedef GridItemImageUrl<G> = String Function(G item);

class AsyncImageGridView<T, G> extends StatelessWidget {
  final AsyncValue<T> asyncValue;
  final List<G> Function(T data) getItems;
  final String Function(G item) getImageUrl;
  final EdgeInsets gridPadding;
  final int crossAxisCount;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final double childAspectRatio;
  final double minHeight;
  final String emptyText;
  final String errorText;
  final TextStyle? emptyStyle;
  final TextStyle? errorStyle;
  final Widget Function()? loadingBuilder;
  final Widget Function(Object, StackTrace)? errorBuilder;
  final Widget Function(String)? placeHolderBuilder;
  final Widget Function(String, Object)? errorImageBuilder;
  final bool hasNext;

  const AsyncImageGridView({
    super.key,
    required this.asyncValue,
    required this.getItems,
    required this.getImageUrl,
    this.gridPadding = EdgeInsets.zero,
    this.crossAxisCount = 3,
    this.crossAxisSpacing = 1.0,
    this.mainAxisSpacing = 1.0,
    this.childAspectRatio = 1.0,
    this.minHeight = 200.0,
    this.emptyText = '관련 항목이 없습니다.',
    this.errorText = '관련 항목을 불러올 수 없습니다.',
    this.emptyStyle,
    this.errorStyle,
    this.loadingBuilder,
    this.errorBuilder,
    this.placeHolderBuilder,
    this.errorImageBuilder,
    this.hasNext = false,
  });

  @override
  Widget build(BuildContext context) {
    return asyncValue.when(
      data: (data) {
        final items = getItems(data);

        if (items.isEmpty) {
          return ConstrainedBox(
            constraints: BoxConstraints(minHeight: minHeight),
            child: Center(
              child: Text(
                emptyText,
                style: emptyStyle ?? AppTexts.b8.copyWith(color: ColorName.g3),
              ),
            ),
          );
        }

        return Padding(
          padding: gridPadding,
          child: Column(
            children: [
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: crossAxisSpacing,
                  mainAxisSpacing: mainAxisSpacing,
                  childAspectRatio: childAspectRatio,
                ),
                itemBuilder: (context, index) {
                  final item = items[index];
                  return CachedNetworkImage(
                    imageUrl: getImageUrl(item),
                    fit: BoxFit.cover,
                    placeholder: (context, url) => placeHolderBuilder?.call(url) ?? _buildPlaceHolderImage(),
                    errorWidget: (context, url, error) => errorImageBuilder?.call(url, error) ?? _buildErrorImage(),
                  );
                },
              ),
              if (hasNext) _buildLoadingView(useConstraints: false),
            ],
          ),
        );
      },
      loading: loadingBuilder ?? () => _buildLoadingView(padding: EdgeInsets.zero),
      error: errorBuilder ?? (error, _) => _buildErrorView(),
    );
  }

  // GRID-ITEM
  Widget _buildPlaceHolderImage() {
    return Container(color: ColorName.g7);
  }

  Widget _buildErrorImage() {
    return Container(color: ColorName.g7, child: const Icon(Icons.error));
  }

  // LOADING
  Widget _buildLoadingView({
    EdgeInsetsGeometry padding = const EdgeInsets.symmetric(vertical: 20),
    bool useConstraints = true,
  }) {
    final content = Padding(
      padding: padding,
      child: const Center(child: CircularProgressIndicator()),
    );

    return useConstraints
        ? ConstrainedBox(
            constraints: BoxConstraints(minHeight: minHeight),
            child: content,
          )
        : content;
  }

  // ERROR
  Widget _buildErrorView() {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: minHeight),
      child: Center(
        child: Text(
          errorText,
          style: errorStyle ?? AppTexts.b8.copyWith(color: ColorName.g3),
        ),
      ),
    );
  }
}
