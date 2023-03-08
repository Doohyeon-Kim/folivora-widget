import 'package:flutter/material.dart';

abstract class FvWidget extends StatelessWidget {
  const FvWidget({Key? key, required this.folivoraWidget}) : super(key: key);
  final Widget folivoraWidget;

  @override
  Widget build(BuildContext context) {
    return folivoraWidget;
  }
}
