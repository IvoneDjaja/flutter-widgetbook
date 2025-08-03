import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({
    this.color,
    this.mainAxisAlignment,
    this.mainAxisSize,
    this.crossAxisAlignment,
    this.textDirection,
    this.verticalDirection,
    this.textBaseline,
    this.spacing,
    this.children = const <Widget>[],
    super.key,
  });

  final Color? color;

  final MainAxisAlignment? mainAxisAlignment;

  final MainAxisSize? mainAxisSize;

  final CrossAxisAlignment? crossAxisAlignment;

  // The [textDirection] argument defaults to the ambient [Directionality], if
  // any. If there is no ambient directionality, and a text direction is going
  // to be necessary to determine the layout order (which is always the case
  // unless the row has no children or only one child) or to disambiguate start
  // or end values for the [mainAxisAlignment], the [textDirection] must not be
  // null.
  final TextDirection? textDirection;

  final VerticalDirection? verticalDirection;

  // If [crossAxisAlignment] is [CrossAxisAlignment.baseline], then
  // [textBaseline] must not be null.
  final TextBaseline? textBaseline;

  final double? spacing;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final child = DecoratedBox(
      decoration: BoxDecoration(
        color: color,
      ),
      child: Row(
        mainAxisAlignment: mainAxisAlignment!,
        mainAxisSize: mainAxisSize!,
        crossAxisAlignment: crossAxisAlignment!,
        textDirection: textDirection,
        verticalDirection: verticalDirection!,
        textBaseline: textBaseline,
        spacing: spacing ?? 0,
        children: children,
      ),
    );
    debugPrint(child.toString());
    return child;
  }
}
