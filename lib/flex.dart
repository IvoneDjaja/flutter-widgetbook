import 'package:flutter/material.dart';

class FlexExample extends StatelessWidget {
  const FlexExample({
    super.key,
    required this.direction,
    this.color,
    this.mainAxisAlignment,
    this.mainAxisSize,
    this.crossAxisAlignment,
    this.textDirection,
    this.verticalDirection,
    this.clipBehavior,
    this.textBaseline,
    this.spacing,
    this.children = const <Widget>[],
  });

  final Axis direction;

  final MainAxisAlignment? mainAxisAlignment;

  final Color? color;

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

  final Clip? clipBehavior;

  final double? spacing;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
      ),
      child: Flex(
        direction: direction,
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down,
        textBaseline: textBaseline,
        clipBehavior: clipBehavior ?? Clip.none,
        spacing: spacing ?? 0,
        children: children,
      ),
    );
  }
}
