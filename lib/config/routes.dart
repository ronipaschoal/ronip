import 'package:go_router/go_router.dart';
import 'package:ronip/pages/home/home_route.dart';

sealed class RpRoutes {
  static const String home = HomeRoute.home;

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      HomeRoute.route(),
    ],
  );
}
