import 'package:flutter/material.dart';
import 'package:folivora_widget/folivora_widget.dart';

import '../folivora_widget/folivora_widget.dart';
import 'folivora_button_factory.dart';

abstract class FvButton extends FvWidget {
  const FvButton({Key? key, required Widget buttonWidget})
      : super(key: key, folivoraWidget: buttonWidget);

  factory FvButton.convex({
    Key? key,
    required VoidCallback onPressed,
    String text,
    Status status,
    TextStyle? textStyle,
    TextStyle? pressedTextStyle,
    EdgeInsetsGeometry? padding,
    Color? color,
    Color? foregroundColor,
    Color? pressedColor,
    double? circular,
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

  factory FvButton.disabled(
      {Key? key,
      Widget? child,
      double? width,
      double? height,
      String text,
      Color? foregroundColor,
      Color? backgroundColor,
      BorderSide? borderSide,
      TextStyle? textStyle,
      double? circular,
      EdgeInsetsGeometry? padding}) = FolivoraDisabledButton;

  factory FvButton.cancel(
      {Key? key,
      Widget? child,
      double? width,
      double? height,
      String text,
      Color? foregroundColor,
      Color? backgroundColor,
      BorderSide? borderSide,
      TextStyle? textStyle,
      double? circular,
      EdgeInsetsGeometry? padding}) = FolivoraDisabledButton;

  // factory FvButton.text(
  //     {Key? key,
  //       required VoidCallback onPressed,
  //       required String text,
  //       Size? size,
  //       Color? color,
  //       TextStyle? textStyle,
  //       EdgeInsetsGeometry? padding}) = _DestructiveTextButton;

  // factory FvButton.destructiveText(
  //     {Key? key,
  //       required VoidCallback onPressed,
  //       required String text,
  //       Size? size,
  //       Color? color,
  //       TextStyle? textStyle,
  //       EdgeInsetsGeometry? padding}) = _DestructiveTextButton;

  factory FvButton.icon({
    Key? key,
    required VoidCallback onPressed,
    required Icon icon,
    Color? color,
    double? splashRadius,
  }) = FolivoraIconButton;

// factory FvButton.fab({
//   required VoidCallback onPressed,
//   required Widget child,
//   Color? backgroundColor,
// }) = _FAB;

// factory FvButton.expandedFAB({
//   required VoidCallback onPressed,
//   required Widget label,
//   Widget? icon,
//   Color? backgroundColor,
// }) = _ExpandedFAB;

}
