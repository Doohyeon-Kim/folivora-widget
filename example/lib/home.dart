import 'package:example/constants/path/route_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:folivora_palette/folivora_palette.dart';
import 'package:folivora_widget/folivora_widget.dart';
import 'package:go_router/go_router.dart';

import 'provider/theme_view_model.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          FvTopNavigationBar.title(
              context: context,
              textWidget: Text(
                "Folivora Widget",
                style: FvTypo.title3,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FvButton.elevated(
                  onPressed: () {
                    ref.read(themeProvider.notifier).setLightMode();
                  },
                  foregroundColor: Theme.of(context).colorScheme.primary,
                  backgroundColor: Theme.of(context).colorScheme.background,
                  width: 128,
                  text: "Light Theme"),
              const SizedBox(
                width: 24,
              ),
              FvButton.elevated(
                  onPressed: () {
                    ref.read(themeProvider.notifier).setDarkMode();
                  },
                  foregroundColor: Theme.of(context).colorScheme.primary,
                  backgroundColor: Theme.of(context).colorScheme.background,
                  width: 128,
                  text: "Dark Theme"),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          FvButton.elevated(
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(AppRoute.name.buttonExamplesScreen);
              },
              foregroundColor: Theme.of(context).colorScheme.primary,
              backgroundColor: Theme.of(context).colorScheme.background,
              width: 128,
              text: "Go To Button Examples Screen"),
          // ButtonExamplesScreen(),
        ],
      ),
    );
  }
}
