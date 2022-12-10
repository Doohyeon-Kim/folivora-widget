import 'package:example/buttons/button_examples_screen.dart';
import 'package:example/constants/path/route_path.dart';
import 'package:example/home.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (_, state) {
      return const HomeScreen();
    },
    routes: [
      GoRoute(
        path: AppRoute.path.home,
        name: AppRoute.name.home,
        builder: (_, state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path: AppRoute.path.buttonExamplesScreen,
        name: AppRoute.name.buttonExamplesScreen,
        builder: (_, state) {
          return const ButtonExamplesScreen();
        },
      ),
    ],
  ),
]);
