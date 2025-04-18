import 'dart:ffi';

import 'package:daelim_2025/app/router/app_route.dart';
import 'package:daelim_2025/presentaion/main/main_screen.dart';
import 'package:daelim_2025/presentaion/result/result_screen.dart';
import 'package:daelim_2025/presentaion/start/start_screen.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: AppRoute.start.toPath,
  routes: [
    GoRoute(
      path: AppRoute.start.toPath,
      name: AppRoute.start.name,
      builder: (context, state) => StartScreen(),
    ),
    GoRoute(
      path: AppRoute.main.toPath,
      name: AppRoute.main.name,
      builder: (context, state) => MainScreen(),
    ),
    GoRoute(
      path: AppRoute.result.toPath,
      name: AppRoute.result.name,
      builder: (context, state) {
        final bmi = state.uri.queryParameters['bmi'];

        //가져올값
        return ResultScreen(bmi: double.parse(bmi!));
      },
    ),
  ],
);
