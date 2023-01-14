import 'package:flutter/material.dart';
import 'package:folivora_widget/folivora_widget.dart';

import '../folivora_widget/folivora_widget.dart';
import 'folivora_button_factory.dart';

abstract class FvButton extends FvWidget {
  const FvButton({Key? key, required Widget buttonWidget})
      : super(key: key, folivoraWidget: buttonWidget);

  factory FvButton.convex({
    Key? key,
    required BuildContext context,
    required VoidCallback onPressed,
    String text,
    IconData? icon,
    WidgetStatus widgetStatus,
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
    required BuildContext context,
    required VoidCallback onPressed,
    WidgetStatus widgetStatus,
    String text,
    TextStyle? textStyle,
    EdgeInsetsGeometry? padding,
    double? circular,
    Color? foregroundColor,
    Color? backgroundColor,
    double? width,
    double? height,
    double? elevation,
    Widget? child,
  }) = FolivoraElevatedButton;

  factory FvButton.filled({
    Key? key,
    required BuildContext context,
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
    WidgetStatus widgetStatus,
  }) = FolivoraFilledButton;

  factory FvButton.filledTonal({
    Key? key,
    required BuildContext context,
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
    WidgetStatus widgetStatus,
  }) = FolivoraFilledTonalButton;

  factory FvButton.outlined(
      {Key? key,
      required BuildContext context,
      required VoidCallback onPressed,
      WidgetStatus widgetStatus,
      Widget? child,
      double? width,
      double? height,
      String text,
      Color? borderColor,
      Color? foregroundColor,
      BorderSide? borderSide,
      TextStyle? textStyle,
      double? circular,
      EdgeInsetsGeometry? padding}) = FolivoraOutlinedButton;

  factory FvButton.text({
    Key? key,
    required VoidCallback onPressed,
    WidgetStatus? status,
    ButtonStyle? style,
    required Widget child,
  }) = FolivoraTextButton;

  factory FvButton.icon({
    Key? key,
    required BuildContext context,
    required VoidCallback onPressed,
    required Icon icon,
    Color? color,
    double? splashRadius,
  }) = FolivoraIconButton;

  factory FvButton.fab({
    Key? key,
    required BuildContext context,
    required VoidCallback onPressed,
    required Icon icon,
    Color? color,
    // required Widget child,
  }) = FolivoraFab;

// factory FvButton.expandedFab({
//   required VoidCallback onPressed,
//   required Widget label,
//   Widget? icon,
//   Color? backgroundColor,
// }) = FolivoraExpandedFAB;

}
