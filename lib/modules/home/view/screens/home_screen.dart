import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/theme/app_style.dart';
import '../../model/home_bottom_nav_menu.dart';
import '../widgets/home_bottom_nav_bar.dart';
import '../widgets/home_app_bar.dart';

class HomeScreen extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const HomeScreen({
    super.key,
    required this.navigationShell,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _lastVisitedTabIndex = HomeBottomNavMenu.bookPick.index;

  // NOTE(현호): 개선 필요
  void _onTabTapped(int index) {
    // 딥타임 같이 전체 화면을 사용하는 뷰로 이동할 때, 현재 탭(이전 탭이 될)을 저장합니다.
    final previousIndex = widget.navigationShell.currentIndex;
    if (index == HomeBottomNavMenu.deepTime.index) {
      setState(() {
        _lastVisitedTabIndex = previousIndex;
      });
    }

    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    final navigationShell = widget.navigationShell;
    return Scaffold(
      // NOTE(현호): 하나로 통합했어요. 기존 로직은 HomeAppBar 내에 남겨두었습니다.
      appBar: HomeAppBar(
        currentIndex: navigationShell.currentIndex,
        onBackTap: () {
          navigationShell.goBranch(_lastVisitedTabIndex, initialLocation: true);
        },
      ),
      body: Padding(padding: AppPaddings.SCREEN_BODY_PADDING, child: navigationShell), // NOTE(현호): 패딩 조정
      bottomNavigationBar: navigationShell.currentIndex == HomeBottomNavMenu.bookLog.index
          ? null
          : HomeBottomNavBar(
              currentMenu: HomeBottomNavMenu.values[navigationShell.currentIndex],
              onTap: (tab) => _onTabTapped(HomeBottomNavMenu.values.indexOf(tab)),
            ),
    );
  }
}
