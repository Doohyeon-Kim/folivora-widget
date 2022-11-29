import 'package:example/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:folivora_widget/folivora_widget.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Folivora Package Test App',
      theme: theme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons"),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FvButton.convex(
                    onPressed: () {
                      ref.read(themeProvider.notifier).setLightMode();
                    },
                    width: 120,
                    height: 40,
                    text: "Light Theme"),
                const SizedBox(
                  width: 24,
                ),
                FvButton.convex(
                    onPressed: () {
                      ref.read(themeProvider.notifier).setDarkMode();
                    },
                    width: 120,
                    height: 40,
                    text: "Dark Theme"),
              ],
            ),
            const SizedBox(height: 20),
            FvButton.convex(
              onPressed: () {},
              text: "Convex Button",
              width: 120,
              height: 40,
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
          ],
        ),
      ),
    );
  }
}
