import 'package:flutter/material.dart';
import 'package:folivora_widget/folivora_widget.dart';

class ButtonExamplesPage extends StatelessWidget {
  const ButtonExamplesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FvTopNavigationBar.backButton(
            context: context,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FvButton.convex(
                context: context,
                onPressed: () {},
                text: "Convex",
                width: 92,
              ),
              const SizedBox(width: 8),
              FvButton.convex(
                context: context,
                onPressed: () {},
                width: 92,
                icon: Icons.add,
                text: "Icon",
              ),
              const SizedBox(width: 8),
              FvButton.convex(
                context: context,
                onPressed: () {},
                widgetStatus: WidgetStatus.loading,
                width: 92,
              ),
              const SizedBox(width: 8),
              FvButton.convex(
                context: context,
                text: "Disabled",
                onPressed: () {},
                widgetStatus: WidgetStatus.disabled,
                width: 92,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FvButton.elevated(
                context: context,
                onPressed: () {},
                text: "Elevated",
                width: 92,
              ),
              const SizedBox(width: 8),
              FvButton.elevated(
                context: context,
                onPressed: () {},
                widgetStatus: WidgetStatus.loading,
                width: 92,
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
              const SizedBox(width: 8),
              FvButton.elevated(
                context: context,
                onPressed: () {},
                widgetStatus: WidgetStatus.loading,
                width: 92,
              ),
              const SizedBox(width: 8),
              FvButton.elevated(
                context: context,
                onPressed: () {},
                text: "Disabled",
                widgetStatus: WidgetStatus.disabled,
                width: 92,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FvButton.filled(
                context: context,
                onPressed: () {},
                text: "Filled",
                width: 92,
              ),
              const SizedBox(width: 8),
              FvButton.filled(
                context: context,
                onPressed: () {},
                width: 92,
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
              const SizedBox(width: 8),
              FvButton.filled(
                context: context,
                onPressed: () {},
                widgetStatus: WidgetStatus.loading,
                width: 92,
              ),
              const SizedBox(width: 8),
              FvButton.filled(
                context: context,
                onPressed: () {},
                text: "Disabled",
                widgetStatus: WidgetStatus.disabled,
                width: 92,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FvButton.filledTonal(
                context: context,
                onPressed: () {},
                text: "Filled Tonal",
                width: 92,
              ),
              const SizedBox(width: 8),
              FvButton.filledTonal(
                context: context,
                onPressed: () {},
                width: 92,
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
              const SizedBox(width: 8),
              FvButton.filledTonal(
                context: context,
                onPressed: () {},
                widgetStatus: WidgetStatus.loading,
                width: 92,
              ),
              const SizedBox(width: 8),
              FvButton.filledTonal(
                context: context,
                onPressed: () {},
                text: "Disabled",
                widgetStatus: WidgetStatus.disabled,
                width: 92,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FvButton.outlined(
                context: context,
                onPressed: () {},
                text: "Outlined",
                width: 92,
              ),
              const SizedBox(width: 8),
              FvButton.outlined(
                context: context,
                onPressed: () {},
                width: 92,
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
              const SizedBox(width: 8),
              FvButton.outlined(
                context: context,
                widgetStatus: WidgetStatus.loading,
                onPressed: () {},
                text: "Outlined",
                width: 92,
              ),
              const SizedBox(width: 8),
              FvButton.outlined(
                context: context,
                onPressed: () {},
                widgetStatus: WidgetStatus.disabled,
                text: "Disabled",
                width: 92,
              ),
              const SizedBox(width: 8),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FvButton.text(onPressed: () {}, child: const Text("Text")),
              const SizedBox(width: 8),
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
              const SizedBox(width: 8),
              FvButton.text(
                onPressed: () {},
                status: WidgetStatus.disabled,
                child: const Text("Disabled"),
              ),
            ],
          ),
          const SizedBox(height: 20),
          FvButton.icon(
              context: context,
              onPressed: () {},
              icon: const Icon(Icons.wb_incandescent_outlined)),
          const SizedBox(height: 20),
          Row(
            children: [
              FvButton.fab(
                context: context,
                onPressed: () {},
                icon: const Icon(Icons.abc),
              ),
            ],
          ),
          const SizedBox(height: 20),
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
              const SizedBox(height: 8),
              FvButton.filled(
                context: context,
                onPressed: () {},
                widgetStatus: WidgetStatus.loading,
                width: double.infinity,
                height: 48,
                circular: 0,
              ),
              const SizedBox(height: 8),
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
        ],
      ),
    );
  }
}
