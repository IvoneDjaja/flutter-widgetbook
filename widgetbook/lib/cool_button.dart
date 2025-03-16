import 'package:flutter/material.dart';
import 'package:flutter_widgetbook/cool_button.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Red',
  type: CoolButton,
  path: '[Interactions]/buttons',
)
Widget primaryButton(BuildContext context) {
  return CoolButton(
    text: context.knobs.string(
      label: 'Title Label',
      initialValue: 'Primary',
    ),
    state: CoolButtonState.red,
  );
}

@widgetbook.UseCase(
  name: 'Blue',
  type: CoolButton,
  path: '[Interactions]/buttons',
)
Widget secondaryButton(BuildContext context) {
  return CoolButton(
    text: context.knobs.string(
      label: 'Title Label',
      initialValue: 'Secondary',
    ),
    state: CoolButtonState.blue,
  );
}
