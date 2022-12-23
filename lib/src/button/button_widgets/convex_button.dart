import 'package:flutter/material.dart';
import '../../status/status.dart';

Widget convexButtonWidget({
  Key? key,
  required WidgetStatus status,
  required VoidCallback onPressed,
  required String text,
  required TextStyle? textStyle,
  required TextStyle? pressedTextStyle,
  required EdgeInsetsGeometry? padding,
  required Color? color,
  required Color? foregroundColor,
  required Color? pressedColor,
  required double circular,
  required double width,
  required double height,
  required Widget? child,
}) {
  switch (status) {
    case WidgetStatus.loading:
      {
        return StatefulBuilder(
          builder: (context, state) {
            return GestureDetector(
              onTapDown: (TapDownDetails tapped) {
                status = WidgetStatus.active;
                state(() {});
              },
              onTapUp: (TapUpDetails tapped) {
                status = WidgetStatus.loading;
                state(() {});
                onPressed.call();
              },
              child: Container(
                padding: padding,
                width: width,
                height: height,
                decoration: BoxDecoration(
                  color: pressedColor,
                  borderRadius: BorderRadius.circular(circular),
                ),
                alignment: Alignment.center,
                child: child ??
                    SizedBox(
                      width: height / 2,
                      height: height / 2,
                      child: CircularProgressIndicator(
                        color: foregroundColor,
                      ),
                    ),
              ),
            );
          },
        );
      }
    case WidgetStatus.disabled:
      {
        return Opacity(
          opacity: 0.4,
          child: StatefulBuilder(
            builder: (context, state) {
              return GestureDetector(
                onTapDown: (TapDownDetails tapped) {
                  status = WidgetStatus.active;
                  state(() {});
                },
                onTapUp: (TapUpDetails tapped) {
                  status = WidgetStatus.disabled;
                  state(() {});
                  onPressed.call();
                },
                child: Container(
                  padding: padding,
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                    color: status == WidgetStatus.disabled ? color : pressedColor,
                    borderRadius: BorderRadius.circular(circular),
                  ),
                  alignment: Alignment.center,
                  child: child ??
                      Text(text,
                          style: status == WidgetStatus.disabled
                              ? textStyle
                              : pressedTextStyle),
                ),
              );
            },
          ),
        );
      }
    case WidgetStatus.normal:
    default:
      {
        return StatefulBuilder(
          builder: (context, state) {
            return GestureDetector(
              onTapDown: (TapDownDetails tapped) {
                status = WidgetStatus.active;
                state(() {});
              },
              onTapUp: (TapUpDetails tapped) {
                status = WidgetStatus.normal;
                state(() {});
                onPressed.call();
              },
              child: Container(
                padding: padding,
                width: width,
                height: height,
                decoration: BoxDecoration(
                  color: status == WidgetStatus.normal ? color : pressedColor,
                  borderRadius: BorderRadius.circular(circular),
                ),
                alignment: Alignment.center,
                child: child ??
                    Text(text,
                        style: status == WidgetStatus.normal
                            ? textStyle
                            : pressedTextStyle),
              ),
            );
          },
        );
      }
  }
}
