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

  EdgeInsetsGeometry _getBodyPadding({required String currentRoute}) {
    switch (currentRoute) {
      case "/book-log":
        {
          return AppPaddings.BOOK_LOG_SCREEN_BODY_PADDING;
        }
      case "/deep-time":
        {
          return EdgeInsets.zero;
        }
      default:
        {
          return AppPaddings.SCREEN_BODY_PADDING;
        }
    }
  }

  Color? _getAppBarBackgroundColor({required String currentRoute}) {
    switch (currentRoute) {
      case "/reading-challenge":
        {
          return Colors.transparent;
        }
      default:
        {
          return null;
        }
    }
  }

  Widget? _getAppBarFlexibleSpace({required String currentRoute}) {
    switch (currentRoute) {
      case "/reading-challenge":
        {
          return Container(
            decoration: BoxDecoration(
              color: const Color(0xFF6A4EFF).withValues(alpha: 0.15),
            ),
          );
        }
      default:
        {
          return null;
        }
    }
  }

  BoxDecoration? _getBodyDecoration({required String currentRoute}) {
    switch (currentRoute) {
      case "/reading-challenge":
        {
          return BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF6A4EFF).withValues(alpha: 0.15),
                Color(0xFF191919).withValues(alpha: 1.0),
              ],
              stops: [0.0, 1.0],
            ),
          );
        }
      default:
        {
          return null;
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    final navigationShell = widget.navigationShell;
    final isRunningDeepTime =
        ref.watch(deepTimeViewModelProvider).value?.status ==
            DeepTimeStatus.running;
    final router = GoRouter.of(context);
    final currentRoute =
        router.routerDelegate.currentConfiguration.uri.toString();

    Color? appBarBackgroundColor =
        _getAppBarBackgroundColor(currentRoute: currentRoute);
    Widget? appBarFlexibleSpace =
        _getAppBarFlexibleSpace(currentRoute: currentRoute);
    BoxDecoration? bodyDecoration =
        _getBodyDecoration(currentRoute: currentRoute);
    EdgeInsetsGeometry bodyPadding =
        _getBodyPadding(currentRoute: currentRoute);

    return Scaffold(
      // NOTE(현호): 하나로 통합했어요. 기존 로직은 HomeAppBar 내에 남겨두었습니다.
      appBar: HomeAppBar(
        backgroundColor: appBarBackgroundColor,
        flexibleSpace: appBarFlexibleSpace,
        currentIndex: navigationShell.currentIndex,
        onBackTap: () {
          navigationShell.goBranch(_lastVisitedTabIndex, initialLocation: true);
        },
      ),
      body: Container(
        decoration: bodyDecoration,
        child: Padding(
          // NOTE(현호): 패딩 조정
          padding: bodyPadding,
          child: navigationShell,
        ),
      ),
      bottomNavigationBar: AbsorbPointer(
        absorbing: isRunningDeepTime,
        child: HomeBottomNavBar(
          currentMenu: HomeBottomNavMenu.values[navigationShell.currentIndex],
          onTap: (tab) => _onTabTapped(HomeBottomNavMenu.values.indexOf(tab)),
        ),
      ),
    );
  }
}
