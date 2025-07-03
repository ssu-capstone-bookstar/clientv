import 'package:book/auth/models/auth_status.dart';
import 'package:book/auth/screens/login_screen.dart';
import 'package:book/auth/viewmodels/auth_viewmodel.dart';
import 'package:book/book_pick/screens/book_pick_screen.dart';
import 'package:book/chat/screens/book_talk_screen.dart';
import 'package:book/deep_time/screens/deep_time_screen.dart';
import 'package:book/feed/screens/feed_screen.dart';
import 'package:book/home/screens/home_screen.dart';
import 'package:book/reading_challenge/screens/reading_challenge_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

class _GoRouterRefreshNotifier extends ChangeNotifier {
  final Ref _ref;
  late final ProviderSubscription<AsyncValue<AuthStatus>> _subscription;

  _GoRouterRefreshNotifier(this._ref) {
    _subscription = _ref.listen<AsyncValue<AuthStatus>>(
      authViewModelProvider,
      (_, __) => notifyListeners(),
    );
  }

  @override
  void dispose() {
    _subscription.close();
    super.dispose();
  }
}

@riverpod
GoRouter router(Ref ref) {
  final notifier = _GoRouterRefreshNotifier(ref);
  ref.onDispose(notifier.dispose);

  final rootNavigatorKey = GlobalKey<NavigatorState>();

  return GoRouter(
    initialLocation: '/login',
    navigatorKey: rootNavigatorKey,
    refreshListenable: notifier,
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return HomeScreen(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/reading-log',
                builder: (context, state) => const FeedScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/book-talk',
                builder: (context, state) => const BookTalkScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/book-pick',
                builder: (context, state) => const BookPickScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/deep-time',
                builder: (context, state) => const DeepTimeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/reading-challenge',
                builder: (context, state) => const ReadingChallengeScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) {
      final authState = ref.read(authViewModelProvider);

      if (authState.isLoading || authState.hasError) {
        return null;
      }

      final loggedIn = authState.value == AuthStatus.authenticated;
      final loggingIn = state.matchedLocation == '/login';

      if (!loggedIn) {
        return loggingIn ? null : '/login';
      }

      if (loggingIn) {
        return '/book-pick';
      }

      return null;
    },
  );
}
