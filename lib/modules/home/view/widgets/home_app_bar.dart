import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/theme/app_style.dart';
import '../../../../gen/colors.gen.dart';
import '../../model/home_bottom_nav_menu.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int currentIndex;
  final VoidCallback? onBackTap;

  const HomeAppBar({
    super.key,
    required this.currentIndex,
    this.onBackTap,
  });

  bool get isBookLog => currentIndex == HomeBottomNavMenu.bookLog.index;

  @override
  Size get preferredSize => const Size.fromHeight(AppSizes.APP_BAR_HEIGHT);

  @override
  Widget build(BuildContext context) {
    final label = HomeBottomNavMenu.values[currentIndex].label;
    final isDeepTime = currentIndex == HomeBottomNavMenu.deepTime.index;

    if (isDeepTime) {
      return AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: onBackTap,
          icon: const Icon(Icons.close, color: ColorName.w1),
        ),
        title: Text('딥타임', style: AppTexts.b5),
        centerTitle: true,
      );
    }

    return AppBar(
      automaticallyImplyLeading: false,
      leading: (isBookLog && !Navigator.canPop(context))
          ? BackButton(onPressed: onBackTap)
          : null,
      title: Text(label, style: AppTexts.b5),
      actions: !Navigator.canPop(context)
          ? [
              if (isBookLog)
                IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () => context.go('/book-log/my-page'), // 마이페이지로 이동
                )
            ]
          : [BackButton()],
    );
  }
}
