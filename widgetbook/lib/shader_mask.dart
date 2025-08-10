import 'package:flutter/material.dart';
import 'package:flutter_widgetbook/shader_mask.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'ShaderMask',
  type: ShaderMask,
)
Widget shaderMask(BuildContext context) {
  final gradient = context.knobs.listOrNull(
    label: 'gradient',
    options: ShaderMaskGradient.values,
    initialOption: ShaderMaskGradient.radial,
  );
  final blendMode = context.knobs.listOrNull(
    label: 'blendMode',
    options: BlendMode.values,
    initialOption: BlendMode.modulate,
  );
  return ShaderMaskExample(
    gradient: gradient!,
    blendMode: blendMode!,
  );
}
