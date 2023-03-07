import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:folivora_design_system/folivora_design_system.dart';

final themeProvider =
    StateNotifierProvider<ThemeViewModel, ThemeData>((ref) => ThemeViewModel());

class ThemeViewModel extends StateNotifier<ThemeData> {
  ThemeViewModel() : super(FvLightTheme.themeData);

  void setLightMode() {
    state = FvLightTheme.themeData;
  }

  void setDarkMode() {
    state = FvDarkTheme.themeData;
  }
}
