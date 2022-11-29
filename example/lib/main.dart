import 'package:example/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:folivora_palette/folivora_palette.dart';

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
      theme: theme.themeData,
      home: const MyHomePage(title: 'Folivora'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    color: FvColor.primary,
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    color: FvColor.secondary,
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    color: FvColor.tertiary,
                  ),
                  const Spacer(),
                  Container(
                    width: 20,
                    height: 20,
                    color: FvColor.pinkLavender,
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    color: FvColor.lilac,
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    color: FvColor.bilobaFlower,
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    color: FvColor.veryPeri,
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    color: FvColor.royalPurple,
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    color: FvColor.deepPurple,
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    color: FvColor.tyrianPurple,
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    color: FvColor.mahoganyRed,
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    color: FvColor.carmine,
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    color: FvColor.oldLavender,
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    color: FvColor.grey,
                  ),
                ],
              ),
            ),
            Text("NotoSansKR 노토산스", style: NotoSansKR.thin(fontSize: 12)),
            Text("NotoSansKR 노토산스", style: NotoSansKR.light(fontSize: 12)),
            Text("NotoSansKR 노토산스", style: NotoSansKR.regular(fontSize: 12)),
            Text("NotoSansKR 노토산스", style: NotoSansKR.medium(fontSize: 12)),
            Text("NotoSansKR 노토산스", style: NotoSansKR.bold(fontSize: 12)),
            Text("NotoSansKR 노토산스", style: NotoSansKR.black(fontSize: 12)),
            Text("Roboto 로보토", style: Roboto.thin(fontSize: 12)),
            Text("Roboto 로보토", style: Roboto.light(fontSize: 12)),
            Text("Roboto 로보토", style: Roboto.regular(fontSize: 12)),
            Text("Roboto 로보토", style: Roboto.medium(fontSize: 12)),
            Text("Roboto 로보토", style: Roboto.bold(fontSize: 12)),
            Text("Roboto 로보토", style: Roboto.black(fontSize: 12)),
            Text("SFPro 샌프란시스코프로", style: SFPro.thin(fontSize: 12)),
            Text("SFPro 샌프란시스코프로", style: SFPro.light(fontSize: 12)),
            Text("SFPro 샌프란시스코프로", style: SFPro.regular(fontSize: 12)),
            Text("SFPro 샌프란시스코프로", style: SFPro.medium(fontSize: 12)),
            Text("SFPro 샌프란시스코프로", style: SFPro.bold(fontSize: 12)),
            Text("SFPro 샌프란시스코프로", style: SFPro.black(fontSize: 12)),
            Text(
              "Google 구글",
              style: M3Typo.titleLarge,
            ),
            Text(
              "Google 구글",
              style: Roboto.regular(fontSize: 22),
            ),
            Text(
              "Apple 애플",
              style: HIGTypo.title2,
            ),
            Text(
              "Apple 애플",
              style: SFPro.regular(fontSize: 22),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {}, child: const Text("Light Theme")),
                const SizedBox(width: 32),
                ElevatedButton(
                    onPressed: () {}, child: const Text("Dark Theme")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
