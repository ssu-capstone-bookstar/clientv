import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const HomeScreen({
    super.key,
    required this.navigationShell,
  });

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navigationShell.currentIndex == 0
          ? AppBar(
              leading: !Navigator.canPop(context) ? const BackButton() : null,
              title: const Text(
                '책로그',
              ),
              actions: [
                // TO-DO: 프로필 편집 버튼 제거
              ],
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
              onTap: (index) {
                navigationShell.goBranch(
                  index,
                  initialLocation: index == navigationShell.currentIndex,
                );
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.book),
                  label: '책로그',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble_outline),
                  label: '책톡',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: '책픽',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.timelapse),
                  label: '딥타임',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.military_tech_outlined),
                  label: '리딩챌린지',
                ),
              ],
            ),
    );
  }
}
