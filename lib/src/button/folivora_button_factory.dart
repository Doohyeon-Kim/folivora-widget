import 'package:flutter/material.dart';
import 'package:folivora_palette/folivora_palette.dart';
import 'package:folivora_widget/folivora_widget.dart';
import 'package:folivora_widget/src/button/button_widgets/filled_button.dart';

import 'button_widgets/convex_button.dart';
import 'button_widgets/elevated_button.dart';

class FolivoraConvexButton extends FvButton {
  FolivoraConvexButton({
    Key? key,
    BuildContext? context,
    required VoidCallback onPressed,
    String text = "",
    TextStyle? textStyle,
    TextStyle? pressedTextStyle,
    EdgeInsetsGeometry? padding,
    WidgetStatus? widgetStatus,
    Color? color,
    Color? foregroundColor,
    Color? pressedColor,
    double? circular,
    double? width,
    double? height,
    Widget? child,
  }) : super(
          key: key,
          buttonWidget: convexButtonWidget(
              status: widgetStatus ?? WidgetStatus.normal,
              onPressed: onPressed,
              color: color ?? FvTheme.light.colorScheme.primary,
              pressedColor: pressedColor ??
                      FvTheme.light.colorScheme.primary.withOpacity(0.7),
              foregroundColor: foregroundColor ?? FvTheme.light.colorScheme.onPrimary,
              text: text,
              textStyle: textStyle ??
                  TextStyle(color: FvTheme.light.colorScheme.onPrimary),
              pressedTextStyle: pressedTextStyle ??
                  TextStyle(color: FvTheme.light.colorScheme.onPrimary),
              padding: padding,
              circular: circular ?? 4,
              width: width ?? 64,
              height: height ?? 36,
              child: child),
        );
}

class FolivoraElevatedButton extends FvButton {
  FolivoraElevatedButton({
    Key? key,
    required VoidCallback onPressed,
    WidgetStatus? widgetStatus,
    String text = "",
    TextStyle? textStyle,
    EdgeInsetsGeometry? padding,
    double? circular,
    Color? foregroundColor,
    Color? backgroundColor,
    double? width,
    double? height,
    double? elevation,
    Widget? child,
  }) : super(
          key: key,
          buttonWidget: elevatedButtonWidget(
              status: widgetStatus ?? WidgetStatus.normal,
              onPressed: onPressed,
              text: text,
              textStyle: textStyle,
              foregroundColor: FvTheme.light.colorScheme.primary,
              backgroundColor: FvTheme.light.colorScheme.background,
              circular: circular ?? 4,
              padding: padding,
              elevation: elevation ?? 2,
              width: width ?? 64,
              height: height ?? 36,
              child: child),
        );
}

class FolivoraFilledButton extends FvButton {
  FolivoraFilledButton({
    Key? key,
    required VoidCallback onPressed,
    WidgetStatus? widgetStatus,
    String text = "",
    TextStyle? textStyle,
    EdgeInsetsGeometry? padding,
    double? circular,
    Color? color,
    Color? foregroundColor,
    double? width,
    double? height,
    Widget? child,
  }) : super(
            key: key,
            buttonWidget: filledButtonWidget(
                status: widgetStatus ?? WidgetStatus.normal,
                onPressed: onPressed,
                text: text,
                textStyle: textStyle,
                padding: padding,
                backgroundColor: color ?? FvTheme.light.colorScheme.primary,
                foregroundColor:
                    foregroundColor ?? FvTheme.light.colorScheme.onPrimary,
                circular: circular ?? 4,
                width: width ?? 64,
                height: height ?? 36,
                child: child));
}

class FolivoraOutlinedButton extends FvButton {
  FolivoraOutlinedButton(
      {Key? key,
      required VoidCallback onPressed,
      WidgetStatus status = WidgetStatus.normal,
      Widget? child,
      double? width,
      double? height,
      Color? foregroundColor,
      Color? backgroundColor,
      BorderSide? borderSide,
      String text = "",
      TextStyle? textStyle,
      double? circular,
      EdgeInsetsGeometry? padding})
      : super(
          key: key,
          buttonWidget: OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
                minimumSize: Size(width ?? 64, height ?? 36),
                backgroundColor: backgroundColor ?? FvTheme.light.canvasColor,
                foregroundColor: foregroundColor ??
                    (FvTheme.state == ThemeState.light
                        ? FvColor.folivora
                        : FvColor.bilobaFlower),
                textStyle: textStyle,
                padding: padding,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(circular ?? 4))),
            child: child ?? Text(text, style: textStyle),
          ),
        );
}

class FolivoraDisabledButton extends FvButton {
  FolivoraDisabledButton(
      {Key? key,
      WidgetStatus status = WidgetStatus.disabled,
      Widget? child,
      double? width,
      double? height,
      String text = "",
      Color? foregroundColor,
      Color? backgroundColor,
      BorderSide? borderSide,
      TextStyle? textStyle,
      double? circular,
      EdgeInsetsGeometry? padding})
      : super(
          key: key,
          buttonWidget: Opacity(
            opacity: 0.4,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  minimumSize: Size(width ?? 64, height ?? 36),
                  backgroundColor: backgroundColor ??
                      (FvTheme.state == ThemeState.light
                          ? FvTheme.light.canvasColor
                          : FvTheme.dark.canvasColor),
                  foregroundColor: foregroundColor ??
                      (FvTheme.state == ThemeState.light
                          ? FvColor.folivora
                          : FvColor.bilobaFlower),
                  textStyle: textStyle,
                  padding: padding,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(circular ?? 4))),
              child: child ?? Text(text, style: textStyle),
            ),
          ),
        );
}

class FolivoraIconButton extends FvButton {
  FolivoraIconButton({
    Key? key,
    required VoidCallback onPressed,
    required Widget icon,
    Color? color,
    double? splashRadius,
  }) : super(
          key: key,
          buttonWidget: IconButton(
            onPressed: onPressed,
            icon: icon,
            color: color ??
                (FvTheme.state == ThemeState.light
                    ? FvTheme.light.colorScheme.primary
                    : FvTheme.dark.colorScheme.primary),
            splashRadius: splashRadius,
          ),
        );
}
