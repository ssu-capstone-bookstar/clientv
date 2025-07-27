import 'package:flutter/cupertino.dart';

import '../../../gen/assets.gen.dart';

enum HomeBottomNavMenu {
  bookLog,
  bookTalk,
  bookPick,
  deepTime,
  readingChallenge;

  String get label {
    switch (this) {
      case HomeBottomNavMenu.bookLog:
        return '책로그';
      case HomeBottomNavMenu.bookTalk:
        return '책톡';
      case HomeBottomNavMenu.bookPick:
        return '책픽';
      case HomeBottomNavMenu.deepTime:
        return '딥타임';
      case HomeBottomNavMenu.readingChallenge:
        return '리딩 챌린지';
    }
  }

  Widget get icon {
    switch (this) {
      case HomeBottomNavMenu.bookLog:
        return Assets.images.navBookLogUnselected3x.image(scale: 3);
      case HomeBottomNavMenu.bookTalk:
        return Assets.images.navBookTalkUnselected3x.image(scale: 3);
      case HomeBottomNavMenu.bookPick:
        return Assets.images.navBookPickUnselected3x.image(scale: 3);
      case HomeBottomNavMenu.deepTime:
        return Assets.images.navDeepTimeUnselected3x.image(scale: 3);
      case HomeBottomNavMenu.readingChallenge:
        return Assets.images.navReadingChallengeUnselected3x.image(scale: 3);
    }
  }

  Widget get activeIcon {
    switch (this) {
      case HomeBottomNavMenu.bookLog:
        return Assets.images.navBookLogSelected3x.image(scale: 3);
      case HomeBottomNavMenu.bookTalk:
        return Assets.images.navBookTalkSelected3x.image(scale: 3);
      case HomeBottomNavMenu.bookPick:
        return Assets.images.navBookPickSelected3x.image(scale: 3);
      case HomeBottomNavMenu.deepTime:
        return Assets.images.navDeepTimeSelected3x.image(scale: 3);
      case HomeBottomNavMenu.readingChallenge:
        return Assets.images.navReadingChallengeSelected3x.image(scale: 3);
    }
  }
}
