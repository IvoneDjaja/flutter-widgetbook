import 'package:flutter/material.dart';

enum CoolButtonState {
  red,
  blue,
}

extension CoolButtonStateExtension on CoolButtonState {
  Color get color {
    switch (this) {
      case CoolButtonState.red:
        return Colors.red;
      case CoolButtonState.blue:
        return Colors.blue;
    }
  }
}

class CoolButton extends StatelessWidget {
  final String text;
  final CoolButtonState state;

  const CoolButton({
    super.key,
    required this.text,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(state.color),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
