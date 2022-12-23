import 'package:flutter/material.dart';
import '../../status/status.dart';

Widget elevatedButtonWidget({
  Key? key,
  required WidgetStatus status,
  required VoidCallback onPressed,
  required String text,
  required TextStyle? textStyle,
  required EdgeInsetsGeometry? padding,
  required Color backgroundColor,
  required Color? foregroundColor,
  required double circular,
  required double width,
  required double height,
  required Widget? child,
  required double elevation,
}) {
  switch (status) {
    case WidgetStatus.loading:
      {
        return ElevatedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            minimumSize: Size(width, height),
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            textStyle: textStyle,
            padding: padding,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(circular),
            ),elevation: elevation,
          ),
          child: child ??
              SizedBox(
                width: height / 2,
                height: height / 2,
                child: CircularProgressIndicator(
                  color: foregroundColor,
                ),
              ),
        );
      }
    case WidgetStatus.disabled:
      {
        return Opacity(
          opacity: 0.4,
          child: ElevatedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              minimumSize: Size(width, height),
              backgroundColor: backgroundColor,
              foregroundColor: foregroundColor,
              textStyle: textStyle,
              padding: padding,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(circular),
              ),
              elevation: elevation,
            ),
            child: child ?? Text(text, style: textStyle),
          ),
        );
      }
    case WidgetStatus.normal:
    default:
      {
        return ElevatedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            minimumSize: Size(width, height),
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            textStyle: textStyle,
            padding: padding,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(circular),
            ),
            elevation: elevation,
          ),
          child: child ?? Text(text, style: textStyle),
        );
      }
  }
}
