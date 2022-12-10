///
/// This is for users who not using riverpod or provider.
///

enum Theme { light, dark }

class ThemeProvider {
  ThemeProvider._();

  static Theme theme = Theme.light;
}
