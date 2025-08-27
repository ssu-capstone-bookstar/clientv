import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../common/theme/style/app_texts.dart';
import '../../../../gen/colors.gen.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
    required this.emptyIcon,
    required this.emptyText,
    required this.isEmpty,
    required this.itemCount,
    required this.itemBuilder,
    this.scrollDirection = Axis.vertical,
    this.scrollController,
    this.separatorBuilder,
  });

  final SvgPicture emptyIcon;
  final String emptyText;
  final bool isEmpty;
  final int itemCount;
  final Widget? Function(BuildContext, int) itemBuilder;
  final Axis scrollDirection;
  final ScrollController? scrollController;
  final Widget Function(BuildContext, int)? separatorBuilder;

  @override
  Widget build(BuildContext context) {
    return isEmpty
        ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                emptyIcon,
                const SizedBox(height: 12),
                Text(
                  emptyText,
                  style: AppTexts.b8.copyWith(color: ColorName.g3),
                ),
              ],
            ),
          )
        : ListView.separated(
            scrollDirection: scrollDirection,
            controller: scrollController,
            itemCount: itemCount,
            itemBuilder: itemBuilder,
            separatorBuilder: separatorBuilder ??
                (context, index) => const Divider(height: 1));
  }
}
