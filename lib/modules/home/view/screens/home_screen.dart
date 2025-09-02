import 'package:book/modules/deep_time/view_model/deep_time_state.dart';
import 'package:book/modules/deep_time/view_model/deep_time_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/theme/app_style.dart';
import '../../model/home_bottom_nav_menu.dart';
import '../widgets/home_bottom_nav_bar.dart';
import '../widgets/home_app_bar.dart';

class HomeScreen extends ConsumerStatefulWidget {
  final StatefulNavigationShell navigationShell;

  const HomeScreen({
    super.key,
    required this.navigationShell,
  });

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
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
    // deeptime에서 타이머 돌아갈때는 bottomNavigationBar 비활성화
    final deepTimeState = ref.watch(deepTimeViewModelProvider);
    final router = GoRouter.of(context);
    final currentRoute =
        router.routerDelegate.currentConfiguration.uri.toString();
    final isReadingChallengeMain = currentRoute == "/reading-challenge";

    EdgeInsetsGeometry padding = AppPaddings.SCREEN_BODY_PADDING;
    if (navigationShell.currentIndex == HomeBottomNavMenu.bookLog.index) {
      padding = AppPaddings.BOOK_LOG_SCREEN_BODY_PADDING;
    } else if (navigationShell.currentIndex ==
        HomeBottomNavMenu.deepTime.index) {
      padding = EdgeInsets.zero;
    }

    return Scaffold(
      // NOTE(현호): 하나로 통합했어요. 기존 로직은 HomeAppBar 내에 남겨두었습니다.
      appBar: HomeAppBar(
        backgroundColor: isReadingChallengeMain ? Colors.transparent : null,
        flexibleSpace: isReadingChallengeMain
            ? Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF6A4EFF),
                ),
              )
            : null,
        currentIndex: navigationShell.currentIndex,
        onBackTap: () {
          navigationShell.goBranch(_lastVisitedTabIndex, initialLocation: true);
        },
      ),
      body: Container(
        decoration: isReadingChallengeMain
            ? const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF6A4EFF),
                    Color(0xFF6A4EFF),
                    Color(0xFF191919),
                  ],
                  stops: [0.0, 0.15, 1.0],
                ),
              )
            : null,
        child: Padding(
          // NOTE(현호): 패딩 조정
          padding: padding,
          child: navigationShell,
        ),
      ),
      bottomNavigationBar: deepTimeState.when(
        data: (state) {
          final isTimerRunning = state.status == DeepTimeStatus.running;
          return AbsorbPointer(
            absorbing: isTimerRunning,
            child: HomeBottomNavBar(
              currentMenu:
                  HomeBottomNavMenu.values[navigationShell.currentIndex],
              onTap: (tab) =>
                  _onTabTapped(HomeBottomNavMenu.values.indexOf(tab)),
            ),
          );
        },
        loading: () => const SizedBox.shrink(),
        error: (e, s) => const SizedBox.shrink(),
      ),
    );
  }
}
