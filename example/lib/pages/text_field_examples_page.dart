import 'package:flutter/material.dart';
import 'package:folivora_widget/folivora_widget.dart';

class TextFieldExamplesPage extends StatelessWidget {
  const TextFieldExamplesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FvTopNavigationBar.backButton(
            context: context,
          ),
          const SizedBox(height: 20),
            TextField(),
        ],
      ),
    );
  }
}
