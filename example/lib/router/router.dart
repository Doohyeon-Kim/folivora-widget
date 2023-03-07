import 'package:example/pages/examples/button_examples_page.dart';
import 'package:example/constants/path/route_path.dart';
import 'package:example/pages/home_page.dart';
import 'package:example/pages/examples/text_field_examples_page.dart';
import 'package:example/pages/root_page.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (_, state) {
      return const RootPage();
    },
    routes: [
      GoRoute(
        path: AppRoute.path.home,
        name: AppRoute.name.home,
        builder: (_, state) {
          return const HomePage();
        },
      ),
      GoRoute(
        path: AppRoute.path.buttonExamplesScreen,
        name: AppRoute.name.buttonExamplesScreen,
        builder: (_, state) {
          return const ButtonExamplesPage();
        },
      ),

      GoRoute(
        path: AppRoute.path.textFieldExamplesScreen,
        name: AppRoute.name.textFieldExamplesScreen,
        builder: (_, state) {
          return const TextFieldExamplesPage();
        },
      ),
    ],
  ),
]);
