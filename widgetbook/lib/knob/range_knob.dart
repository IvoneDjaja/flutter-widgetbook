import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class RangeKnob extends Knob<RangeValues> {
  RangeKnob({
    required super.label,
    required super.initialValue,
  });

  @override
  List<Field> get fields => [
        DoubleInputField(
          name: 'min-$label',
          initialValue: initialValue.start,
        ),
        DoubleInputField(
          name: 'max-$label',
          initialValue: initialValue.end,
        )
      ];

  @override
  RangeValues valueFromQueryGroup(Map<String, String> group) {
    return RangeValues(
      valueOf('min-$label', group)!,
      valueOf('max-$label', group)!,
    );
  }
}

extension RangeKnobBuilder on KnobsBuilder {
  RangeValues range({
    required String label,
    RangeValues initialValue = const RangeValues(0, 10),
  }) =>
      onKnobAdded(RangeKnob(
        label: label,
        initialValue: initialValue,
      ))!;
}
