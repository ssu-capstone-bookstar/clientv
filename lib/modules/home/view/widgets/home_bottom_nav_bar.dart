import 'package:flutter/material.dart';

import '../../../../gen/colors.gen.dart';
import '../../../../common/theme/app_style.dart';
import '../../model/home_bottom_nav_menu.dart';

class HomeBottomNavBar extends StatelessWidget {
  final HomeBottomNavMenu currentMenu;
  final void Function(HomeBottomNavMenu) onTap;

  const HomeBottomNavBar({
    super.key,
    required this.currentMenu,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: AppBorders.BOTTOM_NAV_BAR_BORDER_RADIUS,
      child: BottomAppBar(
        color: ColorName.g7,
        height: AppSizes.BOTTOM_NAV_BAR_HEIGHT, // NOTE(현호): 70으로 조정 (65 - 오버플로우 발생)
        padding: AppPaddings.BOTTOM_NAV_BAR_TOP_PADDING,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: HomeBottomNavMenu.values.map((menu) {
            final isSelected = menu == currentMenu;

            return Expanded(
              child: GestureDetector(
                onTap: () => onTap(menu),
                behavior: HitTestBehavior.opaque,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 4.0,
                  children: [
                    isSelected ? menu.activeIcon : menu.icon,
                    Text(
                      menu.label,
                      style: AppTexts.b10.copyWith(
                        color: isSelected ? ColorName.p1 : ColorName.g3,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
