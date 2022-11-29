import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:folivora_palette/folivora_palette.dart';

final themeProvider =
    StateProvider<ThemeNotifier>((ref) => ThemeNotifier(FvTheme.dark));

class ThemeNotifier extends StateNotifier {
  ThemeNotifier(super.state);

  ThemeData themeData = FvTheme.dark;

  void setLightMode() {
    state.value = FvTheme.light;
  }

  void setDarkMode() {
    state.value = FvTheme.dark;
  }
}
