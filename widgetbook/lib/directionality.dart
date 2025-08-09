import 'package:flutter/material.dart';
import 'package:flutter_widgetbook/directionality.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Directionality',
  type: Directionality,
)
Widget directionality(BuildContext context) {
  final textDirection = context.knobs.list(
    label: 'textDirection',
    options: TextDirection.values,
    initialOption: TextDirection.ltr,
  );
  final margin = context.knobs.double.input(
    label: 'margin',
    initialValue: 0,
  );
  final color = context.knobs.colorOrNull(
    label: 'color',
  );
  final data = context.knobs.stringOrNull(label: 'Text');

  return DirectionalityExample(
    textDirection: textDirection,
    margin: EdgeInsetsDirectional.all(margin),
    color: color,
    child: data != null ? Text(data) : null,
  );
}
