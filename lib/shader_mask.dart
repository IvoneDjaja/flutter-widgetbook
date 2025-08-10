import 'package:flutter/material.dart';

enum ShaderMaskGradient {
  linear,
  sweep,
  radial,
}

class ShaderMaskExample extends StatelessWidget {
  const ShaderMaskExample({
    required this.gradient,
    required this.blendMode,
    super.key,
  });

  final ShaderMaskGradient gradient;

  final BlendMode blendMode;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        switch (gradient) {
          case ShaderMaskGradient.linear:
            return LinearGradient(
              colors: <Color>[Colors.yellow, Colors.deepOrange.shade900],
            ).createShader(bounds);
          case ShaderMaskGradient.sweep:
            return SweepGradient(
              colors: <Color>[Colors.yellow, Colors.deepOrange.shade900],
            ).createShader(bounds);
          case ShaderMaskGradient.radial:
            return RadialGradient(
              center: Alignment.topLeft,
              radius: 1.0,
              colors: <Color>[Colors.yellow, Colors.deepOrange.shade900],
              tileMode: TileMode.mirror,
            ).createShader(bounds);
        }
      },
      blendMode: blendMode,
      child: const Text(
        "I'm burning the memories",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
