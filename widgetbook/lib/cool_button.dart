import 'package:flutter/material.dart';
import 'package:flutter_widgetbook/cool_button.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Red', type: CoolButton)
Widget primaryButton(BuildContext context) {
  return const CoolButton(
    text: 'Primary',
    state: CoolButtonState.red,
  );
}

@UseCase(name: 'Blue', type: CoolButton)
Widget secondaryButton(BuildContext context) {
  return const CoolButton(
    text: 'Secondary',
    state: CoolButtonState.blue,
  );
}
