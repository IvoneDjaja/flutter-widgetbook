import 'package:flutter/material.dart';

class DirectionalityExample extends StatelessWidget {
  const DirectionalityExample({
    required this.textDirection,
    this.margin,
    this.color,
    this.child,
    super.key,
  });

  final TextDirection textDirection;

  final EdgeInsetsGeometry? margin;

  final Color? color;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: textDirection,
      child: Container(
        margin: margin,
        color: color,
        child: child,
      ),
    );
  }
}
