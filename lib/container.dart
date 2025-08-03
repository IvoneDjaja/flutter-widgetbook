import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({
    this.data,
    this.alignment,
    this.padding,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    this.width,
    this.height,
    this.constraints,
    this.margin,
    this.transform,
    this.transformAlignment,
    this.clipBehavior,
    super.key,
  });

  final String? data;

  final Alignment? alignment;

  final EdgeInsetsGeometry? padding;

  // If the [decoration] is used, this property must be null. A background color
  // may still be painted by the [decoration] even if this property is null.
  final Color? color;

  final Decoration? decoration;

  final Decoration? foregroundDecoration;

  final double? width;

  final double? height;

  final BoxConstraints? constraints;

  final EdgeInsetsGeometry? margin;

  final Matrix4? transform;

  final AlignmentGeometry? transformAlignment;

  final Clip? clipBehavior;

  @override
  Widget build(BuildContext context) {
    final child = Container(
      alignment: alignment,
      padding: padding,
      color: color,
      decoration: decoration,
      foregroundDecoration: foregroundDecoration,
      width: width,
      height: height,
      constraints: constraints,
      margin: margin,
      transform: transform,
      transformAlignment: transformAlignment,
      clipBehavior: clipBehavior ?? Clip.none,
      child: data != null ? Text(data!) : null,
    );
    debugPrint(child.toString());
    return child;
  }
}
