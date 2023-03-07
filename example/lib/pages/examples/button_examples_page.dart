import 'package:flutter/material.dart';
import 'package:folivora_design_system/folivora_design_system.dart';
import 'package:folivora_sizer/folivora_sizer.dart';
import 'package:folivora_widget/folivora_widget.dart';

class ButtonExamplesPage extends StatelessWidget {
  const ButtonExamplesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FvTopNavigationBar.backButton(
            context: context,
          ),
          SizedBox(height: Sizer.unitHeight.lp12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FvButton.convex(
                context: context,
                onPressed: () {},
                text: "Convex",
                width: 80,
              ),
              SizedBox(width: Sizer.unitWidth.lp4),
              FvButton.convex(
                context: context,
                onPressed: () {},
                width: 80,
                icon: Icons.add,
                text: "Icon",
              ),
              SizedBox(width: Sizer.unitWidth.lp4),
              FvButton.convex(
                context: context,
                onPressed: () {},
                widgetStatus: WidgetStatus.loading,
                width: 80,
              ),
              SizedBox(width: Sizer.unitWidth.lp4),
              FvButton.convex(
                context: context,
                text: "Disabled",
                onPressed: () {},
                widgetStatus: WidgetStatus.disabled,
                width: 80,
              ),
            ],
          ),
          SizedBox(height: Sizer.unitHeight.lp12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FvButton.elevated(
                context: context,
                onPressed: () {},
                text: "Elevated",
              ),
              SizedBox(width: Sizer.unitWidth.lp4),
              FvButton.elevated(
                context: context,
                onPressed: () {},
                widgetStatus: WidgetStatus.loading,
                width: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.add,
                      size: 20,
                    ),
                    Text(
                      "Icon",
                    ),
                  ],
                ),
              ),
              SizedBox(width: Sizer.unitWidth.lp4),
              FvButton.elevated(
                context: context,
                onPressed: () {},
                widgetStatus: WidgetStatus.loading,
                width: 80,
              ),
              SizedBox(width: Sizer.unitWidth.lp4),
              FvButton.elevated(
                context: context,
                onPressed: () {},
                text: "Disabled",
                widgetStatus: WidgetStatus.disabled,
                width: 80,
              ),
            ],
          ),
          SizedBox(height: Sizer.unitHeight.lp12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FvButton.filled(
                context: context,
                onPressed: () {},
                text: "Filled",
                width: 80,
              ),
              SizedBox(width: Sizer.unitWidth.lp4),
              FvButton.filled(
                context: context,
                onPressed: () {},
                width: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.add,
                      size: 20,
                    ),
                    Text(
                      "Icon",
                    ),
                  ],
                ),
              ),
              SizedBox(width: Sizer.unitWidth.lp4),
              FvButton.filled(
                context: context,
                onPressed: () {},
                widgetStatus: WidgetStatus.loading,
                width: 80,
              ),
              SizedBox(width: Sizer.unitWidth.lp4),
              FvButton.filled(
                context: context,
                onPressed: () {},
                text: "Disabled",
                widgetStatus: WidgetStatus.disabled,
                width: 80,
              ),
            ],
          ),
          SizedBox(height: Sizer.unitHeight.lp12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FvButton.filledTonal(
                context: context,
                onPressed: () {},
                text: "Filled Tonal",
                textStyle: FvTypography.caption2,
                width: 80,
              ),
              SizedBox(width: Sizer.unitWidth.lp4),
              FvButton.filledTonal(
                context: context,
                onPressed: () {},
                width: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.add,
                      size: 20,
                    ),
                    Text(
                      "Icon",
                    ),
                  ],
                ),
              ),
              SizedBox(width: Sizer.unitWidth.lp4),
              FvButton.filledTonal(
                context: context,
                onPressed: () {},
                widgetStatus: WidgetStatus.loading,
                width: 80,
              ),
              SizedBox(width: Sizer.unitWidth.lp4),
              FvButton.filledTonal(
                context: context,
                onPressed: () {},
                text: "Disabled",
                widgetStatus: WidgetStatus.disabled,
                width: 80,
              ),
            ],
          ),
          SizedBox(height: Sizer.unitHeight.lp12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FvButton.outlined(
                context: context,
                onPressed: () {},
                text: "Outlined",
                width: 80,
              ),
              SizedBox(width: Sizer.unitWidth.lp4),
              FvButton.outlined(
                context: context,
                onPressed: () {},
                width: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.add,
                      size: 20,
                    ),
                    Text("Icon"),
                  ],
                ),
              ),
              SizedBox(width: Sizer.unitWidth.lp4),
              FvButton.outlined(
                context: context,
                widgetStatus: WidgetStatus.loading,
                onPressed: () {},
                text: "Outlined",
                width: 80,
              ),
              SizedBox(width: Sizer.unitWidth.lp4),
              FvButton.outlined(
                context: context,
                onPressed: () {},
                widgetStatus: WidgetStatus.disabled,
                text: "Disabled",
                width: 80,
              ),
              SizedBox(width: Sizer.unitWidth.lp4),
            ],
          ),
          SizedBox(height: Sizer.unitHeight.lp12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FvButton.text(onPressed: () {}, child: const Text("Text")),
              SizedBox(width: Sizer.unitWidth.lp4),
              FvButton.text(
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Icon(
                        Icons.add,
                        size: 20,
                      ),
                      Text("Icon"),
                    ],
                  )),
              SizedBox(width: Sizer.unitWidth.lp4),
              FvButton.text(
                onPressed: () {},
                status: WidgetStatus.disabled,
                child: const Text("Disabled"),
              ),
            ],
          ),
          SizedBox(height: Sizer.unitHeight.lp12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FvButton.icon(
                context: context,
                onPressed: () {},
                icon: const Icon(Icons.wb_incandescent_outlined),
              ),
              SizedBox(width: Sizer.unitWidth.lp16),
              FvButton.fab(
                context: context,
                heroTag: "FAB",
                onPressed: () {},
                icon: const Icon(Icons.abc),
              ),
              SizedBox(width: Sizer.unitWidth.lp16),
              FvButton.extendedFab(
                context: context,
                heroTag: "Extended FAB",
                onPressed: () {},
                icon: const Icon(Icons.edit_note),
                text: "Extended FAB",
              ),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              FvButton.filled(
                context: context,
                onPressed: () {},
                text: "FullWidth Button",
                width: double.infinity,
                height: 48,
                circular: 0,
              ),
              SizedBox(height: Sizer.unitHeight.lp12),
              FvButton.filled(
                context: context,
                onPressed: () {},
                widgetStatus: WidgetStatus.loading,
                width: double.infinity,
                height: 48,
                circular: 0,
              ),
              SizedBox(height: Sizer.unitHeight.lp12),
              FvButton.filled(
                context: context,
                onPressed: () {},
                text: "Disabled Button",
                widgetStatus: WidgetStatus.disabled,
                width: double.infinity,
                height: 48,
                circular: 0,
              ),
            ],
          ),
          SizedBox(
            height: Sizer.unitPadding.bottomSafeArea,
          )
        ],
      ),
    );
  }
}
