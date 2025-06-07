import 'package:flutter/material.dart';

class DecoratedBoxExample extends StatelessWidget {
  const DecoratedBoxExample({
    required this.decoration,
    this.data,
    this.position,
    super.key,
  });

  final String? data;

  final Decoration decoration;

  final DecorationPosition? position;

  @override
  Widget build(BuildContext context) {
    final child = DecoratedBox(
      decoration: decoration,
      position: position ?? DecorationPosition.background,
      child: data != null ? Text(data!) : null,
    );
    debugPrint(child.toString());
    return child;
  }
}
