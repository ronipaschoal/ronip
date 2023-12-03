import 'package:go_router/go_router.dart';
import 'package:ronip/helpers/routes_helper.dart';
import 'package:ronip/pages/home/home_screen.dart';

sealed class HomeRoute {
  static const String home = '/';

  static GoRoute route() {
    return GoRoute(
      path: home,
      pageBuilder: (_, __) => RoutesHelper.transitionPage(
        const HomeScreen(),
      ),
    );
  }
}
