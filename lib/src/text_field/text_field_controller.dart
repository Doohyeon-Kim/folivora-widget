// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/widgets.dart';

class _TextFieldError {
  String? message;
  bool isOccurred = false;
}

class TextFieldController {
  TextFieldController({required this.textEditingController});

  late TextEditingController textEditingController;
  FocusNode? focusNode;

  _TextFieldError textFieldError = _TextFieldError();

  getText() {
    return textEditingController.text;
  }

  textFlush() {
    textEditingController.clear();
  }

  isFilled({required int maxLength}) {
    return textEditingController.text.length == maxLength ? true : false;
  }

  isMinLengthMet({required int minLength}) {
    return textEditingController.text.length >= minLength ? true : false;
  }

  isMaxLengthMet({required int maxLength}) {
    return textEditingController.text.length <= maxLength ? true : false;
  }
}
