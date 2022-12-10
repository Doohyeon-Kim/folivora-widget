import 'package:flutter/material.dart';
import '../../folivora_widget/folivora_widget.dart';
import 'folivora_top_navigation_bar_factory.dart';

class FvTopNavigationBar extends FvWidget {
  FvTopNavigationBar(
      {Key? key,
      required BuildContext context,
      required Widget leftWidget,
      required Widget centerWidget,
      required Widget rightWidget,
      double? navigationBarHeight,
      double? widgetWidth})
      : super(
          key: key,
          folivoraWidget: Padding(
            padding: EdgeInsets.only(
                top: MediaQueryData.fromWindow(WidgetsBinding.instance.window)
                    .padding
                    .top),
            child: SizedBox(
              height: navigationBarHeight ?? 56,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    SizedBox(width: widgetWidth ?? 32, child: leftWidget),
                    Flexible(
                      child: Center(child: centerWidget),
                    ),
                    SizedBox(
                      width: widgetWidth ?? 32,
                      child: rightWidget,
                    )
                  ],
                ),
              ),
            ),
          ),
        );

  factory FvTopNavigationBar.backButton({
    Key? key,
    required BuildContext context,
    double? navigationBarHeight,
    double? widgetWidth,
    Widget? leftWidget,
  }) = FolivoraNavigationBarWithBackButton;


  factory FvTopNavigationBar.title({
    Key? key,
    required BuildContext context,
    double? navigationBarHeight,
    double? widgetWidth,
    required Text textWidget,
  }) = FolivoraNavigationBarWithTitle;
}
