import 'package:flutter/material.dart';
import 'package:folivora_widget/folivora_widget.dart';

class ButtonExamplesScreen extends StatelessWidget {
  const ButtonExamplesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FvTopNavigationBar.backButton(
            context: context,
          ),
          const SizedBox(height: 20),
          FvButton.convex(
            onPressed: () {},
            text: "Convex Button",
            width: 128,
          ),
          const SizedBox(height: 20),
          FvButton.convex(
            text: "Loading Button",
            onPressed: () {},
            status: Status.loading,
            width: 128,
          ),
          const SizedBox(height: 20),
          FvButton.convex(
            text: "Disabled Button",
            onPressed: () {},
            status: Status.disabled,
            width: 128,
          ),
          const SizedBox(height: 20),
          FvButton.elevated(
            onPressed: () {},
            text: "Elevated Button",
          ),
          const SizedBox(height: 20),
          FvButton.filled(
            onPressed: () {},
            text: "Filled Button",
          ),
          const SizedBox(height: 20),
          FvButton.fullWidth(
            onPressed: () {},
            text: "FullWidth Button",
          ),
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
              icon: const Icon(Icons.wb_incandescent_outlined))
        ],
      ),
    );
  }
}
