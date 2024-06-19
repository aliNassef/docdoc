import 'package:docdoc/features/auth/presentation/views/forget_pass_view.dart';
import 'package:docdoc/features/auth/presentation/views/log_in_view.dart';
import 'package:docdoc/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/views/sign_up_view.dart';
import '../../features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const logIn = '/LogInView';
  static const signUp = '/SignUpView';
  static const homeView = '/HomeView';
  static const forgetPassView = '/ForgetPassView';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const OnBoardingView();
        },
      ),
      GoRoute(
        path: logIn,
        builder: (BuildContext context, GoRouterState state) {
          return const LogInView();
        },
      ),
      GoRoute(
        path: signUp,
        builder: (BuildContext context, GoRouterState state) {
          return const SignUpView();
        },
      ),
      GoRoute(
        path: homeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: forgetPassView,
        builder: (BuildContext context, GoRouterState state) {
          return const ForgetPassView();
        },
      ),
    ],
  );
}
