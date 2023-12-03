import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ronip/pages/home/home_screen.dart';
import 'package:ronip/ui/widgets/scaffold.dart';

sealed class RpRoutes {
  static const String home = '/';

  static CustomTransitionPage _customTransitionPage(Widget page) {
    return CustomTransitionPage(
      child: page,
      transitionsBuilder: (_, animation, __, child) {
        return SlideTransition(
          position: animation.drive(
            Tween(
              begin: const Offset(1.5, 0),
              end: Offset.zero,
            ),
          ),
          child: RpScaffold(child: child),
        );
      },
    );
  }

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: home,
        pageBuilder: (_, __) => _customTransitionPage(const HomeScreen()),
      ),
    ],
  );
}
