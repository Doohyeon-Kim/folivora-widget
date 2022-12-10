import 'package:flutter/material.dart';
import 'package:folivora_palette/folivora_palette.dart';

import '../../status/status.dart';

Widget convexButtonWidget({
  Key? key,
  required Status status,
  required VoidCallback onPressed,
  required String text,
  required TextStyle? textStyle,
  required TextStyle? pressedTextStyle,
  required EdgeInsetsGeometry? padding,
  required Color color,
  required Color? foregroundColor,
  required Color pressedColor,
  required double circular,
  required double width,
  required double height,
  required Widget? child,
}) {
  switch (status) {
    case Status.loading:
      {
        return OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
              minimumSize: Size(width, height),
              backgroundColor: pressedColor,
              foregroundColor: foregroundColor,
              textStyle: textStyle,
              padding: padding,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(circular))),
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
    case Status.disabled:
      {
        return Opacity(
          opacity: 0.4,
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                minimumSize: Size(width, height),
                backgroundColor: color,
                foregroundColor: foregroundColor,
                textStyle: textStyle,
                padding: padding,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(circular))),
            child: child ??
                Text(text,
                    style:
                        status == Status.normal ? textStyle : pressedTextStyle),
          ),
        );
      }
    case Status.normal:
    default:
      {
        return StatefulBuilder(
          builder: (context, state) {
            return GestureDetector(
              onTapDown: (TapDownDetails tapped) {
                status = Status.active;
                state(() {});
              },
              onTapUp: (TapUpDetails tapped) {
                status = Status.normal;
                state(() {});
                onPressed.call();
              },
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  color: status == Status.normal ? color : pressedColor,
                  borderRadius: BorderRadius.circular(circular),
                ),
                alignment: Alignment.center,
                child: child ??
                    Text(text,
                        style: status == Status.normal
                            ? textStyle
                            : pressedTextStyle),
              ),
            );
          },
        );
      }
  }
}
