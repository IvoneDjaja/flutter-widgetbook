import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:flutter_widgetbook/row.dart';

@widgetbook.UseCase(
  name: 'Row',
  type: Row,
)
Widget row(BuildContext context) {
  final variant = context.knobs.listOrNull(
    label: 'variant',
    options: ['A', 'B', 'C'],
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

  Widget child = RowExample(
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
        FittedBox(
          child: FlutterLogo(),
        ),
      ],
      if (variant == 'B') ...const [
        Expanded(
          child: Text('Deliver features faster', textAlign: TextAlign.center),
        ),
        Expanded(
          child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
        ),
        Expanded(
          child: FittedBox(
            child: FlutterLogo(),
          ),
        ),
      ],
      if (variant == 'C') ...const [
        FlutterLogo(),
        Expanded(
          child: Text(
              "Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android."),
        ),
        Icon(Icons.sentiment_very_satisfied),
      ],
    ],
  );
  return child;
}
