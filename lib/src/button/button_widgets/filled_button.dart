import 'package:flutter/material.dart';
import '../../status/status.dart';

Widget filledButtonWidget({
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
}) {
  switch (status) {
    case WidgetStatus.loading:
      {
        return OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            minimumSize: Size(width, height),
            side: BorderSide(color: backgroundColor),
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            textStyle: textStyle,
            padding: padding,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(circular),
            ),
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
          child: OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              minimumSize: Size(width, height),
              side: BorderSide(color: backgroundColor),
              backgroundColor: backgroundColor,
              foregroundColor: foregroundColor,
              textStyle: textStyle,
              padding: padding,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(circular),
              ),
            ),
            child: child ?? Text(text, style: textStyle),
          ),
        );
      }
    case WidgetStatus.normal:
    default:
      {
        return OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            minimumSize: Size(width, height),
            side: BorderSide(color: backgroundColor),
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            textStyle: textStyle,
            padding: padding,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(circular),
            ),
          ),
          child: child ?? Text(text, style: textStyle),
        );
      }
  }
}
