import 'package:flutter/material.dart';

import '../../../../common/theme/app_style.dart';
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

    return AppBar(
      automaticallyImplyLeading: false,
      leading: isBookLog && !Navigator.canPop(context) ? BackButton(onPressed: onBackTap) : null,
      title: Text(label, style: AppTexts.b5),
      centerTitle: !isBookLog,
      actions: isBookLog
          ? [
              // TO-DO: 프로필 편집 버튼 제거
            ]
          : null,
    );
  }
}
