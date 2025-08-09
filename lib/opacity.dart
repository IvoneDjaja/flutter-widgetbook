import 'package:flutter/material.dart';

class OpacityExample extends StatelessWidget {
  const OpacityExample({
    super.key,
    required this.opacity,
    required this.alwaysIncludeSemantics,
  });

  final double opacity;

  final bool alwaysIncludeSemantics;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      alwaysIncludeSemantics: alwaysIncludeSemantics,
      child: const Text("Now you see me, now you don't!"),
    );
  }
}
