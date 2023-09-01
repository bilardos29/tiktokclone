import 'package:flutter/material.dart';

class ButtonPostWidget extends StatelessWidget {
  final IconData? icons;
  final String? imgIcon;
  final String? number;

  const ButtonPostWidget({this.icons, this.imgIcon, this.number, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        imgIcon != null
            ? Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Image.asset(
                  'images/$imgIcon',
                  width: 28,
                  height: 28,
                  fit: BoxFit.fill,
                  color: Colors.white,
                ),
              )
            : Icon(icons, color: Colors.white, size: 34),
        number == null ? const SizedBox() : const SizedBox(height: 2),
        number == null
            ? const SizedBox()
            : Text(number ?? '', style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}
