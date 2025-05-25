import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:flutter_widgetbook/container.dart';

@widgetbook.UseCase(
  name: 'Container',
  type: Container,
)
Widget container(BuildContext context) {
  final color = context.knobs.color(
    label: 'Color',
    initialValue: Colors.white,
  );
  return ContainerExample(
    color: color,
  );
}
