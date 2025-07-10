import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../modules/auth/view/screens/login_screen.dart';
import '../../modules/auth/view_model/auth_state.dart';
import '../../modules/auth/view_model/auth_view_model.dart';
import '../../modules/book/view/screens/book_overview_screen.dart';
import '../../modules/book_log/view/screens/book_log_screen.dart';
import '../../modules/book_pick/model/search_book_response.dart';
import '../../modules/book_pick/view/screens/book_pick_screen.dart';
import '../../modules/book_pick/view/screens/book_pick_search_screen.dart';
import '../../modules/chat/view/screens/book_talk_screen.dart';
import '../../modules/deep_time/view/screens/deep_time_screen.dart';
import '../../modules/home/view/screens/home_screen.dart';
import '../../modules/my_page/view/screens/challenge_quit_books_screen.dart';
import '../../modules/my_page/view/screens/customer_support_screen.dart';
import '../../modules/my_page/view/screens/delete_account_screen.dart';
import '../../modules/my_page/view/screens/follower_management_screen.dart';
import '../../modules/my_page/view/screens/liked_diaries_screen.dart';
import '../../modules/my_page/view/screens/login_info_screen.dart';
import '../../modules/my_page/view/screens/my_page_screen.dart';
import '../../modules/my_page/view/screens/scrapped_diaries_screen.dart';
import '../../modules/profile/view/screens/profile_screen.dart';
import '../../modules/reading_challenge/view/screens/ongoing_challenge_list_screen.dart';
import '../../modules/reading_challenge/view/screens/reading_challenge_diary_encourage_screen.dart';
import '../../modules/reading_challenge/view/screens/reading_challenge_rating_screen.dart';
import '../../modules/reading_challenge/view/screens/reading_challenge_screen.dart';
import '../../modules/reading_challenge/view/screens/reading_challenge_start_and_end_page_screen.dart';
import '../../modules/reading_challenge/view/screens/reading_challenge_total_page_screen.dart';
import '../../modules/reading_diary/screens/reading_diary_entry_screen.dart';
import '../../modules/reading_diary/screens/reading_diary_photo_screen.dart';

part 'router.g.dart';

@riverpod
GoRouter router(Ref ref) {
  final rootNavigatorKey = GlobalKey<NavigatorState>();
  final authState = ValueNotifier<AsyncValue<AuthState>>(const AsyncLoading());

  ref
    ..onDispose(authState.dispose)
    ..listen(
        authViewModelProvider.select(
            (value) => value.whenData((value) => value)), (_, next) async {
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
      GoRoute(
        path: '/reading-diary/:progressId',
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) {
          final progressId = int.parse(state.pathParameters['progressId']!);
          return ReadingDiaryPhotoScreen(progressId: progressId);
        },
        routes: [
          GoRoute(
            path: 'entry',
            parentNavigatorKey: rootNavigatorKey,
            builder: (context, state) {
              final extra = state.extra as Map<String, dynamic>;
              final imagePaths = extra['images'] as List<String>;
              final progressId = extra['progressId'] as int;
              return ReadingDiaryEntryScreen(
                imagePaths: imagePaths,
                progressId: progressId,
              );
            },
          ),
        ],
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
                builder: (context, state) => Consumer(
                  builder: (context, ref, _) {
                    return BookLogScreen();
                  },
                ),
                routes: [
                  GoRoute(
                    path: 'profile',
                    parentNavigatorKey: rootNavigatorKey,
                    builder: (context, state) => const ProfileScreen(),
                  ),
                  GoRoute(
                    path: 'my-page',
                    parentNavigatorKey: rootNavigatorKey,
                    builder: (context, state) => const MyPageScreen(),
                    routes: [
                      GoRoute(
                        path: 'challenge-quit-books',
                        parentNavigatorKey: rootNavigatorKey,
                        builder: (context, state) =>
                            const ChallengeQuitBooksScreen(),
                      ),
                      GoRoute(
                        path: 'customer-support',
                        parentNavigatorKey: rootNavigatorKey,
                        builder: (context, state) =>
                            const CustomerSupportScreen(),
                      ),
                      GoRoute(
                        path: 'delete-account',
                        parentNavigatorKey: rootNavigatorKey,
                        builder: (context, state) =>
                            const DeleteAccountScreen(),
                      ),
                      GoRoute(
                        path: 'scrapped-diaries',
                        parentNavigatorKey: rootNavigatorKey,
                        builder: (context, state) =>
                            const ScrappedDiariesScreen(),
                      ),
                      GoRoute(
                        path: 'follower-management',
                        parentNavigatorKey: rootNavigatorKey,
                        builder: (context, state) =>
                            const FollowerManagementScreen(),
                      ),
                      GoRoute(
                        path: 'liked-diaries',
                        parentNavigatorKey: rootNavigatorKey,
                        builder: (context, state) => const LikedDiariesScreen(),
                      ),
                      GoRoute(
                        path: 'login-info',
                        parentNavigatorKey: rootNavigatorKey,
                        builder: (context, state) => const LoginInfoScreen(),
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
                    builder: (context, state) {
                      final from = state.uri.queryParameters['from'];
                      return SearchDetailScreen(from: from);
                    },
                    routes: [
                      GoRoute(
                        path: 'book-overview/:bookId',
                        parentNavigatorKey: rootNavigatorKey,
                        builder: (context, state) {
                          final bookId =
                              int.parse(state.pathParameters['bookId']!);
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
                routes: [
                  GoRoute(
                    path: 'search-new',
                    parentNavigatorKey: rootNavigatorKey,
                    builder: (context, state) {
                      final from = state.uri.queryParameters['from'];
                      return SearchDetailScreen(from: from);
                    },
                  ),
                  GoRoute(
                    path: 'continue-list',
                    parentNavigatorKey: rootNavigatorKey,
                    builder: (context, state) {
                      return const OngoingChallengeListScreen();
                    },
                  ),
                  GoRoute(
                    path: 'total-page',
                    parentNavigatorKey: rootNavigatorKey,
                    builder: (context, state) {
                      final book = state.extra as SearchBookResponse;
                      return ReadingChallengeTotalPageScreen(book: book);
                    },
                  ),
                  GoRoute(
                    path: 'start-and-end',
                    parentNavigatorKey: rootNavigatorKey,
                    builder: (context, state) {
                      final extra = state.extra as Map<String, dynamic>;
                      final book = extra['book'] as SearchBookResponse;
                      final totalPages = extra['totalPages'] as int;
                      final challengeId =
                          extra['challengeId'] as int?; // challengeId를 안전하게 추출
                      return ReadingChallengeStartAndEndPageScreen(
                        book: book,
                        totalPages: totalPages,
                        challengeId: challengeId, // challengeId 전달
                      );
                    },
                  ),
                  GoRoute(
                    path: 'rating',
                    parentNavigatorKey: rootNavigatorKey,
                    builder: (context, state) {
                      final book = state.extra as SearchBookResponse;
                      return ReadingChallengeRatingScreen(book: book);
                    },
                  ),
                  GoRoute(
                    path: 'diary-encourage',
                    parentNavigatorKey: rootNavigatorKey,
                    builder: (context, state) {
                      final extra = state.extra as Map<String, dynamic>;
                      final isChallengeCompleted = extra['isChallengeCompleted'] as bool;
                      final progressId = extra['progressId'] as int;

                      return ReadingChallengeDiaryEncourageScreen(
                        isChallengeCompleted: isChallengeCompleted,
                        progressId: progressId,
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
