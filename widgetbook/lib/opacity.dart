import 'package:flutter/material.dart';
import 'package:flutter_widgetbook/opacity.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Opacity',
  type: Opacity,
)
Widget opacity(BuildContext context) {
  final opacity = context.knobs.double.input(
    label: 'opacity',
    initialValue: 0,
  );

  final alwaysIncludeSemantics = context.knobs.boolean(
    label: 'alwaysIncludeSemantics',
    initialValue: false,
  );

  return OpacityExample(
    opacity: opacity,
    alwaysIncludeSemantics: alwaysIncludeSemantics,
  );
}
