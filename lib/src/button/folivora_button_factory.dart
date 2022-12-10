import 'package:flutter/material.dart';
import 'package:folivora_palette/folivora_palette.dart';
import 'package:folivora_widget/folivora_widget.dart';

import 'convex_button/convex_button.dart';

class FolivoraConvexButton extends FvButton {
  FolivoraConvexButton({
    Key? key,
    required VoidCallback onPressed,
    String text = "",
    TextStyle? textStyle,
    TextStyle? pressedTextStyle,
    EdgeInsetsGeometry? padding,
    Status status = Status.normal,
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
              status: status,
              onPressed: onPressed,
              color: color ??
                  (FvTheme.state == ThemeState.light
                      ? FvTheme.light.colorScheme.primary
                      : FvTheme.dark.colorScheme.primary),
              pressedColor: pressedColor ??
                  (FvTheme.state == ThemeState.light
                      ? FvTheme.light.colorScheme.onPrimaryContainer
                          .withOpacity(0.8)
                      : FvTheme.dark.colorScheme.primary.withOpacity(0.8)),
              foregroundColor: foregroundColor ??
                  (FvTheme.state == ThemeState.light
                      ? FvTheme.light.colorScheme.onPrimary
                      : FvTheme.dark.colorScheme.onPrimary),
              text: text,
              textStyle: textStyle ??
                  TextStyle(
                      color: FvTheme.state == ThemeState.light
                          ? FvTheme.light.colorScheme.onPrimary
                          : FvTheme.dark.colorScheme.onPrimary),
              pressedTextStyle: pressedTextStyle ??
                  TextStyle(
                      color: FvTheme.state == ThemeState.light
                          ? FvTheme.light.colorScheme.onPrimary
                          : FvTheme.dark.colorScheme.onPrimary),
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
    Status status = Status.normal,
    String text = "",
    TextStyle? textStyle,
    EdgeInsetsGeometry? padding,
    double? circular,
    Color? color,
    double? width,
    double? height,
    Widget? child,
  }) : super(
          key: key,
          buttonWidget: ElevatedButton(
            onPressed: onPressed,
            child: child ??
                Text(
                  text,
                  style: textStyle,
                ),
          ),
        );
}

class FolivoraFilledButton extends FvButton {
  FolivoraFilledButton({
    Key? key,
    required VoidCallback onPressed,
    Status status = Status.normal,
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
          buttonWidget: OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
                minimumSize: Size(width ?? 64, height ?? 36),
                backgroundColor: color ?? FvColor.folivora,
                foregroundColor: foregroundColor ?? Colors.black,
                textStyle: textStyle,
                padding: padding,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(circular ?? 4))),
            child: child ?? Text(text, style: textStyle),
          ),
        );
}

class FolivoraFullWidthButton extends FvButton {
  FolivoraFullWidthButton({
    Key? key,
    required VoidCallback onPressed,
    Status status = Status.normal,
    String text = "",
    TextStyle? textStyle,
    EdgeInsetsGeometry? padding,
    double? circular,
    Color? color,
    Color? foregroundColor,
    double? height,
    Widget? child,
  }) : super(
          key: key,
          buttonWidget: OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
                minimumSize: Size(double.infinity, height ?? 36),
                backgroundColor: color ?? FvColor.folivora,
                foregroundColor: foregroundColor ?? Colors.white,
                textStyle: textStyle,
                padding: padding,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(circular ?? 0))),
            child: child ?? Text(text, style: textStyle),
          ),
        );
}

class FolivoraOutlinedButton extends FvButton {
  FolivoraOutlinedButton(
      {Key? key,
      required VoidCallback onPressed,
      Status status = Status.normal,
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
        );
}

class FolivoraDisabledButton extends FvButton {
  FolivoraDisabledButton(
      {Key? key,
      Status status = Status.disabled,
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
