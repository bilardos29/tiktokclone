import 'package:flutter/material.dart';

class ButtonPostWidget extends StatelessWidget {
  final IconData icons;
  final String number;

  const ButtonPostWidget({required this.icons, required this.number, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icons, color: Colors.white, size: 40),
        const SizedBox(height: 2),
        Text(number, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}
