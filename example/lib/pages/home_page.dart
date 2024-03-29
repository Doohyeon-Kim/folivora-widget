import 'package:example/constants/path/route_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:folivora_design_system/folivora_design_system.dart';
import 'package:folivora_widget/folivora_widget.dart';
import 'package:go_router/go_router.dart';

import '../view_model/theme_view_model.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          FvTopNavigationBar.title(
              context: context,
              textWidget: Text(
                "Folivora Widget",
                style: FvTypography.title3,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FvButton.elevated(
                  context: context,
                  onPressed: () {
                    ref.read(themeProvider.notifier).setLightMode();
                  },
                  width: 128,
                  text: "Light Theme"),
              const SizedBox(
                width: 24,
              ),
              FvButton.elevated(
                  context: context,
                  onPressed: () {
                    ref.read(themeProvider.notifier).setDarkMode();
                  },
                  width: 128,
                  text: "Dark Theme"),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          FvButton.elevated(
              context: context,
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(AppRoute.name.buttonExamplesScreen);
              },
              width: 128,
              text: "Go To Button Examples Screen"),
          const SizedBox(
            height: 24,
          ),
          FvButton.elevated(
              context: context,
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(AppRoute.name.textFieldExamplesScreen);
              },
              width: 128,
              text: "Go To Text Field Examples Screen"),
        ],
      ),
    );
  }
}
