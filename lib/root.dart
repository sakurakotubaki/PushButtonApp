import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigator_widget/main.dart';
import 'package:navigator_widget/ui/mypage.dart';
import 'package:navigator_widget/ui/next_page.dart';

/// The route configuration.
final GoRouter goRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MyHomePage();
      },
    ),
    GoRoute(
      path: '/next',
      builder: (BuildContext context, GoRouterState state) {
        return const NextPage();
      },
    ),
    GoRoute(
      path: '/my_page',
      builder: (BuildContext context, GoRouterState state) {
        return const MyPage();
      },
    ),
  ],
);
