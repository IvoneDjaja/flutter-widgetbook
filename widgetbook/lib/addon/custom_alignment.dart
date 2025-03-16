import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class CustomAlignmentAddon extends WidgetbookAddon<Alignment> {
  final Alignment initialAlignment;

  CustomAlignmentAddon({
    this.initialAlignment = Alignment.center,
  }) : super(name: 'Alignment');

  @override
  Widget buildUseCase(
    BuildContext context,
    Widget child,
    Alignment setting,
  ) {
    return Align(
      alignment: setting,
      child: child,
    );
  }

  @override
  List<Field<Alignment>> get fields {
    return [
      ListField<Alignment>(
        name: 'alignment',
        initialValue: initialAlignment,
        values: [
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
      )
    ];
  }

  @override
  Alignment valueFromQueryGroup(Map<String, String> group) {
    return valueOf<Alignment>('alignment', group)!;
  }
}
