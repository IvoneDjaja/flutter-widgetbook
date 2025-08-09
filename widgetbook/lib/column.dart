import 'package:flutter/material.dart';
import 'package:flutter_widgetbook/column.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Column',
  type: Column,
)
Widget column(BuildContext context) {
  final variant = context.knobs.listOrNull(
    label: 'Variant',
    options: ['A', 'B'],
    initialOption: 'A',
  );
  final color = context.knobs.colorOrNull(
    label: 'color',
  );
  final mainAxisAlignment = context.knobs.listOrNull(
    label: 'mainAxisAlignment',
    options: MainAxisAlignment.values,
  );
  final mainAxisSize = context.knobs.listOrNull(
    label: 'mainAxisSize',
    options: MainAxisSize.values,
  );

  final crossAxisAlignment = context.knobs.listOrNull(
    label: 'crossAxisAlignment',
    options: CrossAxisAlignment.values,
  );

  final textDirection = context.knobs.listOrNull(
    label: 'textDirection',
    options: TextDirection.values,
  );

  final verticalDirection = context.knobs.listOrNull(
    label: 'verticalDirection',
    options: VerticalDirection.values,
  );

  final textBaseline = context.knobs.listOrNull(
    label: 'textBaseline',
    options: TextBaseline.values,
  );

  final spacing = context.knobs.doubleOrNull.input(
    label: 'spacing',
  );

  Widget child = ColumnExample(
    color: color,
    mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
    mainAxisSize: mainAxisSize ?? MainAxisSize.max,
    crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
    textDirection: textDirection,
    verticalDirection: verticalDirection ?? VerticalDirection.down,
    textBaseline: textBaseline,
    spacing: spacing,
    children: [
      if (variant == 'A') ...const [
        Text('Deliver features faster', textAlign: TextAlign.center),
        Text('Craft beautiful UIs', textAlign: TextAlign.center),
        Expanded(
          child: FittedBox(
            child: FlutterLogo(),
          ),
        ),
      ],
      if (variant == 'B') ...const [
        Text('We move under cover and we move as one'),
        Text('Through the night, we have one shot to live another day'),
        Text('We cannot let a stray gunshot give us away'),
        Text('We will fight up close, seize the moment and stay in it'),
        Text("It's either that or meet the business end of a bayonet"),
        Text("The code word is 'Rochambeau,' dig me?"),
        Text('Rochambeau!'),
      ],
    ],
  );
  return child;
}
