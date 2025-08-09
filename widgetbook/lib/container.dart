import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:flutter_widgetbook/container.dart';

@widgetbook.UseCase(
  name: 'Container',
  type: Container,
)
Widget container(BuildContext context) {
  final data = context.knobs.stringOrNull(label: 'Text');
  final alignment = context.knobs.listOrNull(
    label: 'alignment',
    options: const [
      Alignment.topLeft,
      Alignment.topCenter,
      Alignment.topRight,
      Alignment.centerLeft,
      Alignment.center,
      Alignment.centerRight,
      Alignment.bottomLeft,
      Alignment.bottomCenter,
      Alignment.bottomRight,
    ],
  );
  final padding = context.knobs.doubleOrNull.input(
    label: 'padding',
  );
  final color = context.knobs.colorOrNull(
    label: 'color',
  );
  final width = context.knobs.doubleOrNull.input(
    label: 'width',
  );
  final height = context.knobs.doubleOrNull.input(
    label: 'height',
  );

  final decorationShape = context.knobs.listOrNull(
    label: 'decorationShape',
    options: BoxShape.values,
  );
  final foregroundDecorationShape = context.knobs.listOrNull(
    label: 'foregroundDecorationShape',
    options: BoxShape.values,
  );
  final foregroundColor = context.knobs.colorOrNull(
    label: 'foregroundColor',
  );
  final minWidth = context.knobs.doubleOrNull.input(
    label: 'minWidth',
  );
  final maxWidth = context.knobs.doubleOrNull.input(
    label: 'maxWidth',
  );
  final minHeight = context.knobs.doubleOrNull.input(
    label: 'minHeight',
  );
  final maxHeight = context.knobs.doubleOrNull.input(
    label: 'maxHeight',
  );
  final margin = context.knobs.doubleOrNull.input(
    label: 'margin',
  );
  final transform = context.knobs.listOrNull(
    label: 'transform',
    options: [
      Matrix4.identity(),
    ],
  );
  final transformAlignment = context.knobs.listOrNull(
    label: 'transformAlignment',
    options: const [
      Alignment.topLeft,
      Alignment.topCenter,
      Alignment.topRight,
      Alignment.centerLeft,
      Alignment.center,
      Alignment.centerRight,
      Alignment.bottomLeft,
      Alignment.bottomCenter,
      Alignment.bottomRight,
    ],
  );
  final clipBehavior = context.knobs.listOrNull(
    label: 'clipBehavior',
    options: Clip.values,
  );

  return ContainerExample(
    data: data,
    alignment: alignment,
    padding: padding != null ? EdgeInsets.all(padding) : null,
    color: decorationShape == null ? color : null,
    decoration: decorationShape != null
        ? BoxDecoration(
            shape: decorationShape,
            color: color,
          )
        : null,
    foregroundDecoration:
        (foregroundDecorationShape != null || foregroundColor != null)
            ? BoxDecoration(
                shape: foregroundDecorationShape ?? BoxShape.rectangle,
                color: foregroundColor,
              )
            : null,
    width: width,
    height: height,
    constraints: BoxConstraints(
      minWidth: minWidth ?? 0,
      maxWidth: maxWidth ?? double.infinity,
      minHeight: minHeight ?? 0,
      maxHeight: maxHeight ?? double.infinity,
    ),
    margin: margin != null ? EdgeInsets.all(margin) : null,
    transform: transform,
    transformAlignment: transformAlignment,
    clipBehavior: clipBehavior,
  );
}
