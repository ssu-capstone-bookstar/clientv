import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../modules/auth/model/auth_status.dart';
import '../../modules/auth/view/screens/login_screen.dart';
import '../../modules/auth/view_model/auth_view_model.dart';
import '../../modules/book/view/screens/book_overview_screen.dart';
import '../../modules/book_log/view/screens/book_log_screen.dart';
import '../../modules/book_pick/view/screens/book_pick_screen.dart';
import '../../modules/chat/view/screens/book_talk_screen.dart';
import '../../modules/deep_time/view/screens/deep_time_screen.dart';
import '../../modules/home/view/screens/home_screen.dart';
import '../../modules/profile/view/screens/profile_screen.dart';
import '../../modules/reading_challenge/view/screens/reading_challenge_screen.dart';
import '../../modules/search/view/screens/search_detail_screen.dart';

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
                path: '/book-log',
                builder: (context, state) => const BookLogScreen(),
                routes: [
                  GoRoute(
                    path: 'profile',
                    parentNavigatorKey: rootNavigatorKey,
                    builder: (context, state) => const ProfileScreen(),
                  ),
                ],
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
                routes: [
                  GoRoute(
                    path: 'search',
                    parentNavigatorKey: rootNavigatorKey,
                    builder: (context, state) => const SearchDetailScreen(),
                    routes: [
                      GoRoute(
                        path: 'book-overview/:bookId',
                        parentNavigatorKey: rootNavigatorKey,
                        builder: (context, state) {
                          final bookId = int.parse(state.pathParameters['bookId']!);
                          return BookOverviewScreen(bookId: bookId);
                        },
                      ),
                    ],
                  ),
                ],
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
