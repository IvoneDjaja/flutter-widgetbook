import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_workspace/knob/range_knob.dart';

@widgetbook.UseCase(name: 'CustomRangeSlider', type: RangeSlider)
Widget rangeSlider(BuildContext context) {
  return RangeSlider(
    values: context.knobs.range(label: 'Range'),
    max: 10,
    min: 0,
    onChanged: (_) {},
  );
}
