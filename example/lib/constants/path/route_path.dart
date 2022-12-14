// ignore_for_file: library_private_types_in_public_api

class AppRoute {
  AppRoute._();

  static _NamedRoute name = _NamedRoute();
  static _RoutePath path = _RoutePath();
}

class _RoutePath {
  String root = '/';
  String home = 'home';
  String buttonExamplesScreen = 'button-examples-screen';
  String textFieldExamplesScreen = 'text-field-examples-screen';
}

class _NamedRoute {
  String root = '/';
  String home = 'home';
  String buttonExamplesScreen = 'button_examples_screen';
  String textFieldExamplesScreen = 'text_field_examples_screen';
}