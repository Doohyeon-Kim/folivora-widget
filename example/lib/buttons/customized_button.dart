import 'package:flutter/material.dart';
import 'package:folivora_widget/folivora_widget.dart';

class CustomizedButton extends StatelessWidget {
  const CustomizedButton(
      {Key? key, required this.onPressed, required this.text, this.width})
      : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return FvButton.convex(
      onPressed: onPressed,
      color: Theme.of(context).colorScheme.primary,
      pressedColor: Theme.of(context).colorScheme.primary.withOpacity(0.7),
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
      textStyle: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
      pressedTextStyle:
          TextStyle(color: Theme.of(context).colorScheme.onPrimary),
      text: text,
      width: width,
    );
  }
}
