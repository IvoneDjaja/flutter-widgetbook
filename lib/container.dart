import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({required this.color, super.key});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: const Text('Container'),
    );
  }
}
