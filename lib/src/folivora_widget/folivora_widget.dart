import 'package:flutter/material.dart';

abstract class FvWidget extends StatefulWidget {
  const FvWidget({Key? key, required this.folivoraWidget}) : super(key: key);

  final Widget folivoraWidget;

  @override
  State<FvWidget> createState() => _FvWidgetState();
}

class _FvWidgetState extends State<FvWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.folivoraWidget;
  }
}
