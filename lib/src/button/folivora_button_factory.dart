import 'package:flutter/material.dart';
import 'package:folivora_palette/folivora_palette.dart';

import 'folivora_button.dart';

class FolivoraConvexButton extends FvButton {
  FolivoraConvexButton({
    Key? key,
    required VoidCallback onPressed,
    String text = "",
    TextStyle? textStyle,
    pressedTextStyle,
    EdgeInsetsGeometry? padding,
    bool hasBeenPressed = false,
    Color? color,
    Color? pressedColor,
    double? circular,
    double? width,
    double? height,
    Widget? child,
  }) : super(
          key: key,
          buttonWidget: StatefulBuilder(
            builder: (context, state) {
              return GestureDetector(
                onTapDown: (TapDownDetails tapped) {
                  hasBeenPressed = true;
                  state(() {});
                },
                onTapUp: (TapUpDetails tapped) {
                  hasBeenPressed = false;
                  state(() {});
                  onPressed.call();
                },
                child: Container(
                  width: width ?? 64,
                  height: height ?? 36,
                  decoration: BoxDecoration(
                    color: hasBeenPressed == false
                        ? color ?? FvColor.folivora
                        : pressedColor ?? FvColor.royalPurple,
                    borderRadius: BorderRadius.circular(circular ?? 4),
                  ),
                  alignment: Alignment.center,
                  child: Text(text,
                      style: hasBeenPressed == false
                          ? textStyle
                          : pressedTextStyle),
                ),
              );
            },
          ),
        );
}

class FolivoraElevatedButton extends FvButton {
  FolivoraElevatedButton({
    Key? key,
    required VoidCallback onPressed,
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
                foregroundColor: foregroundColor ?? Colors.white,
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
      Widget? child,
      double? width,
      double? height,
      Color? foregroundColor,
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
                backgroundColor: FvTheme.state == ThemeState.light
                    ? FvTheme.light.canvasColor
                    : FvTheme.dark.canvasColor,
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
