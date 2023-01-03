import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:folivora_palette/folivora_palette.dart';

final themeProvider =
    StateNotifierProvider<ThemeViewModel, ThemeData>((ref) => ThemeViewModel());

class ThemeViewModel extends StateNotifier<ThemeData> {
  ThemeViewModel() : super(FvTheme.light);

  void setLightMode() {
    FvTheme.state = ThemeState.light;
    state = FvTheme.light;
  }

  void setDarkMode() {
    FvTheme.state = ThemeState.dark;
    state = FvTheme.dark;
  }
}
