import 'package:flutter/material.dart';
import '../../status/status.dart';

Widget textButtonWidget({
  Key? key,
  required VoidCallback onPressed,
  WidgetStatus? status,
  ButtonStyle? style,
  required Widget child,
}) {
  switch (status) {
    case WidgetStatus.disabled:
      {
        return Opacity(
          opacity: 0.4,
          child: TextButton(
            onPressed: onPressed,
            style: style,
            child: child,
          ),
        );
      }
    case WidgetStatus.normal:
    default:
      {
        return TextButton(
          onPressed: onPressed,
          style: style,
          child: child,
        );
      }
  }
}
