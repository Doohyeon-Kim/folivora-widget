import 'package:flutter/material.dart';
import 'package:folivora_palette/folivora_palette.dart';
import 'package:folivora_widget/folivora_widget.dart';

import '../folivora_widget/folivora_widget.dart';

class FvButton extends FvWidget {
  const FvButton({Key? key, required Widget buttonWidget})
      : super(key: key, folivoraWidget: buttonWidget);

  factory FvButton.convex({
    Key? key,
    required VoidCallback onPressed,
    required String text,
    TextStyle? textStyle,
    TextStyle? pressedTextStyle,
    EdgeInsetsGeometry? padding,
    double? circular,
    Color? color,
    Color? pressedColor,
    double? width,
    double? height,
    Widget? child,
  }) = _ConvexButton;

  factory FvButton.elevated({
    Key? key,
    required VoidCallback onPressed,
    required String text,
    TextStyle? textStyle,
    EdgeInsetsGeometry? padding,
    double? circular,
    Color? color,
    double? width,
    double? height,
    Widget? child,
  }) = _ElevatedButton;
}

class _ConvexButton extends FvButton {
  _ConvexButton({
    Key? key,
    required VoidCallback onPressed,
    required String text,
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

class _ElevatedButton extends FvButton {
  _ElevatedButton({
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
