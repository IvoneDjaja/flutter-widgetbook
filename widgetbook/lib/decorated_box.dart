import 'package:flutter/material.dart';
import 'package:flutter_widgetbook/decorated_box.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'DecoratedBox',
  type: DecoratedBox,
)
Widget decoratedBox(BuildContext context) {
  final sizedBoxSize = context.knobs.doubleOrNull.input(
    label: 'SizedBox',
  );
  final data = context.knobs.stringOrNull(label: 'Text');
  final color = context.knobs.colorOrNull(
    label: 'Color',
  );
  final image = context.knobs.boolean(
    label: 'Image',
  );
  final borderWidth = context.knobs.doubleOrNull.input(
    label: 'Border Width',
  );
  final borderRadiusX = context.knobs.doubleOrNull.input(
    label: 'Border Radius X',
  );
  final borderRadiusY = context.knobs.doubleOrNull.input(
    label: 'Border Radius Y',
  );
  final backgroundBlendMode = context.knobs.list(
    label: 'Background Blend Mode',
    options: BlendMode.values,
  );
  final decorationShape = context.knobs.list(
    label: 'Decoration Shape',
    options: BoxShape.values,
  );
  final position = context.knobs.listOrNull(
    label: 'Position',
    options: DecorationPosition.values,
  );

  Widget child = DecoratedBoxExample(
    data: data,
    decoration: BoxDecoration(
      color: color,
      image: image
          ? const DecorationImage(image: AssetImage('assets/images/dash.png'))
          : null,
      border: borderWidth != null
          ? Border.all(
              color: Colors.black,
              width: borderWidth,
            )
          : null,
      borderRadius: (borderRadiusX != null && borderRadiusY != null)
          ? BorderRadius.all(
              Radius.elliptical(borderRadiusX, borderRadiusY),
            )
          : null,
      backgroundBlendMode: color != null ? backgroundBlendMode : null,
      shape: decorationShape,
    ),
    position: position,
  );

  if (sizedBoxSize != null) {
    child = SizedBox(
      width: sizedBoxSize,
      height: sizedBoxSize,
      child: child,
    );
  }

  return child;
}
