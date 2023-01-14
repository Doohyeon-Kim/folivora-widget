import 'package:flutter/material.dart';
import 'package:folivora_widget/folivora_widget.dart';
import 'package:folivora_widget/src/button/button_widgets/filled_button.dart';

import 'button_widgets/convex_button.dart';
import 'button_widgets/elevated_button.dart';
import 'button_widgets/outlined_button.dart';
import 'button_widgets/text_button.dart';

class FolivoraConvexButton extends FvButton {
  FolivoraConvexButton({
    Key? key,
    required BuildContext context,
    required VoidCallback onPressed,
    String text = "",
    IconData? icon,
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
              color: color ?? Theme.of(context).colorScheme.primary,
              pressedColor: pressedColor ??
                  Theme.of(context).colorScheme.primary.withOpacity(0.7),
              foregroundColor:
                  foregroundColor ?? Theme.of(context).colorScheme.onPrimary,
              text: text,
              textStyle: textStyle ??
                  TextStyle(color: Theme.of(context).colorScheme.onPrimary),
              pressedTextStyle: pressedTextStyle ??
                  TextStyle(color: Theme.of(context).colorScheme.onPrimary),
              padding: padding,
              circular: circular ?? 24,
              width: width ?? 64,
              height: height ?? 36,
              icon: icon,
              child: child),
        );
}

class FolivoraElevatedButton extends FvButton {
  FolivoraElevatedButton({
    Key? key,
    required BuildContext context,
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
              foregroundColor: Theme.of(context).colorScheme.primary,
              backgroundColor: Theme.of(context).colorScheme.background,
              circular: circular ?? 24,
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
    required BuildContext context,
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
                backgroundColor: color ?? Theme.of(context).colorScheme.primary,
                foregroundColor:
                    foregroundColor ?? Theme.of(context).colorScheme.onPrimary,
                circular: circular ?? 24,
                width: width ?? 64,
                height: height ?? 36,
                child: child));
}

class FolivoraFilledTonalButton extends FvButton {
  FolivoraFilledTonalButton({
    Key? key,
    required BuildContext context,
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
                backgroundColor:
                    color ?? Theme.of(context).colorScheme.secondaryContainer,
                foregroundColor: foregroundColor ??
                    Theme.of(context).colorScheme.onSecondaryContainer,
                circular: circular ?? 24,
                width: width ?? 64,
                height: height ?? 36,
                child: child));
}

class FolivoraOutlinedButton extends FvButton {
  FolivoraOutlinedButton(
      {Key? key,
      required BuildContext context,
      required VoidCallback onPressed,
      WidgetStatus? widgetStatus,
      Widget? child,
      double? width,
      double? height,
      Color? borderColor,
      Color? foregroundColor,
      Color? backgroundColor,
      BorderSide? borderSide,
      String text = "",
      TextStyle? textStyle,
      double? circular,
      EdgeInsetsGeometry? padding})
      : super(
          key: key,
          buttonWidget: outlinedButtonWidget(
            onPressed: onPressed,
            status: widgetStatus ?? WidgetStatus.normal,
            borderColor: borderColor ??
                Theme.of(context).colorScheme.onSecondaryContainer,
            backgroundColor: backgroundColor ?? Theme.of(context).canvasColor,
            foregroundColor:
                foregroundColor ?? Theme.of(context).colorScheme.primary,
            width: width ?? 64,
            height: height ?? 36,
            circular: circular ?? 24,
            child: child,
            padding: padding,
            textStyle: textStyle,
            text: text,
          ),
        );
}

class FolivoraTextButton extends FvButton {
  FolivoraTextButton({
    Key? key,
    required VoidCallback onPressed,
    WidgetStatus? status,
    ButtonStyle? style,
    Color? color,
    required Widget child,
  }) : super(
          key: key,
          buttonWidget: textButtonWidget(
              onPressed: onPressed, status: status, style: style, child: child),
        );
}

class FolivoraIconButton extends FvButton {
  FolivoraIconButton({
    Key? key,
    required BuildContext context,
    required VoidCallback onPressed,
    required Widget icon,
    Color? color,
    double? splashRadius,
  }) : super(
          key: key,
          buttonWidget: IconButton(
            onPressed: onPressed,
            icon: icon,
            color: color ?? Theme.of(context).colorScheme.primary,
            splashRadius: splashRadius,
          ),
        );
}

class FolivoraFab extends FvButton {
  FolivoraFab({
    Key? key,
    required BuildContext context,
    required VoidCallback onPressed,
    required Widget icon,
    Widget? child,
    Color? color,
  }) : super(
            key: key, buttonWidget: FloatingActionButton(onPressed: onPressed, child: icon,));
}
