import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/assets.gen.dart';

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
  int _lastVisitedTabIndex = 2; // 기본값: 책픽

  String _getCurrentTitle(int index) {
    switch (index) {
      case 0:
        return '책로그';
      case 1:
        return '책톡';
      case 2:
        return '책픽';
      case 3:
        return '딥타임';
      case 4:
        return '리딩챌린지';
      default:
        return '';
    }
  }

  void _onTabTapped(int index) {
    if (index != 0) {
      setState(() {
        _lastVisitedTabIndex = index;
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
      appBar: navigationShell.currentIndex == 0
          ? AppBar(
              leading: !Navigator.canPop(context)
                  ? BackButton(
                      onPressed: () {
                        navigationShell.goBranch(_lastVisitedTabIndex,
                            initialLocation: true);
                      },
                    )
                  : null,
              title: const Text(
                '책로그',
              ),
              actions: !Navigator.canPop(context)
                  ? [
                      IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () {}, // TODO: 마이페이지로 이동
                      )
                    ]
                  : [BackButton()],
            )
          : AppBar(
              title: Text(_getCurrentTitle(navigationShell.currentIndex)),
              elevation: 0,
              centerTitle: true,
            ),
      body: navigationShell,
      bottomNavigationBar: navigationShell.currentIndex == 0
          ? null
          : BottomNavigationBar(
              currentIndex: navigationShell.currentIndex,
              onTap: _onTabTapped,
              items: [
                BottomNavigationBarItem(
                  icon: Assets.images.navBookLogUnselected3x.image(scale: 3),
                  activeIcon:
                      Assets.images.navBookLogSelected3x.image(scale: 3),
                  label: '책로그',
                ),
                BottomNavigationBarItem(
                  icon: Assets.images.navBookTalkUnselected3x.image(scale: 3),
                  activeIcon:
                      Assets.images.navBookTalkSelected3x.image(scale: 3),
                  label: '책톡',
                ),
                BottomNavigationBarItem(
                  icon: Assets.images.navBookPickUnselected3x.image(scale: 3),
                  activeIcon:
                      Assets.images.navBookPickSelected3x.image(scale: 3),
                  label: '책픽',
                ),
                BottomNavigationBarItem(
                  icon: Assets.images.navDeepTimeUnselected3x.image(scale: 3),
                  activeIcon:
                      Assets.images.navDeepTimeSelected3x.image(scale: 3),
                  label: '딥타임',
                ),
                BottomNavigationBarItem(
                  icon: Assets.images.navReadingChallengeUnselected3x
                      .image(scale: 3),
                  activeIcon: Assets.images.navReadingChallengeSelected3x
                      .image(scale: 3),
                  label: '리딩챌린지',
                ),
              ],
            ),
    );
  }
}
