import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../modules/auth/model/auth_status.dart';
import '../../modules/auth/view/screens/login_screen.dart';
import '../../modules/auth/view_model/auth_state.dart';
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

@riverpod
GoRouter router(Ref ref) {
  final rootNavigatorKey = GlobalKey<NavigatorState>();
  final authState = ValueNotifier<AsyncValue<AuthState>>(const AsyncLoading());

  ref
    ..onDispose(authState.dispose)
    ..listen(authViewModelProvider.select((value) => value.whenData((value) => value)), (_, next) async {
      authState.value = next;
    });

  return GoRouter(
    initialLocation: '/login',
    navigatorKey: rootNavigatorKey,
    refreshListenable: authState,
    redirect: (context, state) {
      if (authState.value.isLoading || !authState.value.hasValue) return null;

      if (authState.value.unwrapPrevious().hasError) return '/login';

      final isAuthenticated = authState.value.requireValue is AuthSuccess;
      final isLoginRoute = state.uri.path == '/login';
      // final isSplashRoute = state.uri.path == '/';

      // if (isSplashRoute) {
      //   return isAuthenticated ? '/book-pick' : '/login';
      // }

      if (isLoginRoute && isAuthenticated) {
        return '/book-pick';
      }

      if (!isLoginRoute && !isAuthenticated) {
        return '/login';
      }

      return null;
    },
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
  );
}
