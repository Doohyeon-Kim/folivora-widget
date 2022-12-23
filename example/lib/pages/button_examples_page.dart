import 'package:example/buttons/customized_button.dart';
import 'package:flutter/material.dart';
import 'package:folivora_palette/folivora_palette.dart';
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
          CustomizedButton(
            onPressed: () {},
            text: "Customized Button",
            width: 160,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FvButton.convex(
                onPressed: () {},
                color: Theme.of(context).colorScheme.primary,
                pressedColor:
                    Theme.of(context).colorScheme.primary.withOpacity(0.7),
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
                textStyle:
                    TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                pressedTextStyle:
                    TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                text: "Convex",
                width: 92,
              ),
              const SizedBox(width: 8),
              FvButton.convex(
                onPressed: () {},
                width: 92,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: FvTheme.state == ThemeState.light
                          ? Theme.of(context).colorScheme.onPrimary
                          : FvTheme.dark.colorScheme.primary,
                      size: 20,
                    ),
                    Text(
                      "Icon",
                      style: TextStyle(
                          color: FvTheme.state == ThemeState.light
                              ? FvTheme.light.colorScheme.onPrimary
                              : FvTheme.dark.colorScheme.primary),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              FvButton.convex(
                onPressed: () {},
                color: Theme.of(context).colorScheme.primary,
                pressedColor:
                    Theme.of(context).colorScheme.primary.withOpacity(0.7),
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
                textStyle:
                    TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                pressedTextStyle:
                    TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                widgetStatus: WidgetStatus.loading,
                width: 92,
              ),
              const SizedBox(width: 8),
              FvButton.convex(
                text: "Disabled",
                onPressed: () {},
                color: Theme.of(context).colorScheme.primary,
                pressedColor:
                    Theme.of(context).colorScheme.primary.withOpacity(0.7),
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
                textStyle:
                    TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                pressedTextStyle:
                    TextStyle(color: Theme.of(context).colorScheme.onPrimary),
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
                onPressed: () {},
                text: "Elevated",
                width: 92,
              ),
              const SizedBox(width: 8),
              FvButton.elevated(
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
                onPressed: () {},
                widgetStatus: WidgetStatus.loading,
                width: 92,
              ),
              const SizedBox(width: 8),
              FvButton.elevated(
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
                onPressed: () {},
                text: "Filled",
                width: 92,
              ),
              const SizedBox(width: 8),
              FvButton.filled(
                onPressed: () {},
                widgetStatus: WidgetStatus.loading,
                width: 92,
              ),
              const SizedBox(width: 8),
              FvButton.filled(
                onPressed: () {},
                text: "Disabled",
                widgetStatus: WidgetStatus.disabled,
                width: 92,
              ),
            ],
          ),
          const SizedBox(height: 20),
          const SizedBox(height: 20),
          FvButton.outlined(
            onPressed: () {},
            text: "Outlined Button",
          ),
          const SizedBox(height: 20),
          FvButton.disabled(
            text: "Disabled Button",
          ),
          const SizedBox(height: 20),
          FvButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.wb_incandescent_outlined)),
          Column(
            children: [
              FvButton.filled(
                onPressed: () {},
                text: "FullWidth Button",
                width: double.infinity,
                height: 48,
              ),
              const SizedBox(height: 8),
              FvButton.filled(
                onPressed: () {},
                widgetStatus: WidgetStatus.loading,
                width: double.infinity,
                height: 48,
              ),
              const SizedBox(height: 8),
              FvButton.filled(
                onPressed: () {},
                text: "Disabled Button",
                widgetStatus: WidgetStatus.disabled,
                width: double.infinity,
                height: 48,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
