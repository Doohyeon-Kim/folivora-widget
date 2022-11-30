import 'package:flutter/material.dart';

import '../folivora_widget/folivora_widget.dart';
import 'folivora_button_factory.dart';

abstract class FvButton extends FvWidget {
  const FvButton({Key? key, required Widget buttonWidget})
      : super(key: key, folivoraWidget: buttonWidget);

  factory FvButton.convex({
    Key? key,
    required VoidCallback onPressed,
    String text,
    TextStyle? textStyle,
    TextStyle? pressedTextStyle,
    EdgeInsetsGeometry? padding,
    double? circular,
    Color? color,
    Color? pressedColor,
    double? width,
    double? height,
    Widget? child,
  }) = FolivoraConvexButton;

  factory FvButton.elevated({
    Key? key,
    required VoidCallback onPressed,
    String text,
    TextStyle? textStyle,
    EdgeInsetsGeometry? padding,
    double? circular,
    Color? color,
    double? width,
    double? height,
    Widget? child,
  }) = FolivoraElevatedButton;

  factory FvButton.filled({
    Key? key,
    required VoidCallback onPressed,
    String text,
    TextStyle? textStyle,
    EdgeInsetsGeometry? padding,
    double? circular,
    Color? color,
    Color? foregroundColor,
    double? width,
    double? height,
    Widget? child,
  }) = FolivoraFilledButton;

  factory FvButton.fullWidth({
    Key? key,
    required VoidCallback onPressed,
    String text,
    TextStyle? textStyle,
    EdgeInsetsGeometry? padding,
    double? circular,
    Color? color,
    double? height,
    Widget? child,
  }) = FolivoraFullWidthButton;

  factory FvButton.outlined(
      {required VoidCallback onPressed,
      Widget? child,
      double? width,
      double? height,
      String text,
      Color? foregroundColor,
      BorderSide? borderSide,
      TextStyle? textStyle,
      double? circular,
      EdgeInsetsGeometry? padding}) = FolivoraOutlinedButton;
}
