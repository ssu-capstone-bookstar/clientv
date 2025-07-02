import 'package:book/auth/models/auth_status.dart';
import 'package:book/auth/screens/login_screen.dart';
import 'package:book/auth/viewmodels/auth_viewmodel.dart';
import 'package:book/home/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
GoRouter router(Ref ref) {
  final authState = ref.watch(authViewModelProvider);

  return GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeScreen(),
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) {
      // 로딩 중이거나 에러 발생 시 아무것도 하지 않음 (스플래시 화면 등이 있다면 그곳으로 처리)
      if (authState.isLoading || authState.hasError) {
        return null;
      }

      final status = authState.value;
      final loggedIn = status == AuthStatus.authenticated;
      final loggingIn = state.matchedLocation == '/login';

      if (!loggedIn && !loggingIn) {
        return '/login';
      }

      if (loggedIn && loggingIn) {
        return '/home';
      }

      return null;
    },
  );
}
