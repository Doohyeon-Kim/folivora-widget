import 'package:flutter/material.dart';
import 'package:folivora_widget/folivora_widget.dart';

class FolivoraNavigationBarWithBackButton extends FvTopNavigationBar {
  FolivoraNavigationBarWithBackButton({
    Key? key,
    required BuildContext context,
    double? navigationBarHeight,
    double? widgetWidth,
    Widget? leftWidget,
  }) : super(
          key: key,
          context: context,
          navigationBarHeight: navigationBarHeight,
          widgetWidth: widgetWidth,
          leftWidget: FvButton.icon(
            splashRadius: widgetWidth ?? 32,
            onPressed: () => Navigator.of(context).pop(),
            /// for go router user
            // onPressed: () => GoRouter.of(context).pop(),
            icon: const Icon(Icons.arrow_back_ios),
          ),
          centerWidget: Container(),
          rightWidget: Container(),
        );
}



class FolivoraNavigationBarWithTitle extends FvTopNavigationBar {
  FolivoraNavigationBarWithTitle({
    Key? key,
    required BuildContext context,
    double? navigationBarHeight,
    double? widgetWidth,
    required textWidget,
  }) : super(
    key: key,
    context: context,
    navigationBarHeight: navigationBarHeight,
    widgetWidth: widgetWidth,
    leftWidget: Container(),
    centerWidget: textWidget,
    rightWidget: Container(),
  );
}
