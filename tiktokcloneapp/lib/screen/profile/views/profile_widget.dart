import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String? initialName;
  final String? image;
  final String username;

  const ProfileWidget({
    this.initialName,
    this.image,
    required this.username,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 84,
          height: 84,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(84),
          ),
          child: initialName != null
              ? Text(
                  initialName!,
                  style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )
              : Image.asset('images/$image'),
        ),
        const SizedBox(height: 6),
        Text(
          username,
          style: const TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
