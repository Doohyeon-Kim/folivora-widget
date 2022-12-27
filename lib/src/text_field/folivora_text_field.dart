import 'package:flutter/material.dart';

import '../folivora_widget/folivora_widget.dart';
import './folivora_text_field_factory.dart';

abstract class FvTextField extends FvWidget {
  const FvTextField({Key? key, required Widget textFieldWidget})
      : super(key: key, folivoraWidget: textFieldWidget);

  factory FvTextField.underline({
    Key? key,
  }) = FolivoraUnderlineTextField;
}
