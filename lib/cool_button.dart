import 'package:flutter/material.dart';

class CoolButton extends StatelessWidget {
  const CoolButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ColoredBox(
        color: Colors.white,
        child: Text('Cool!'),
      ),
    );
  }
}
