import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String? imgProfile;
  final bool added;

  const ProfileWidget({this.imgProfile, this.added = true, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: 40,
          height: 40,
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              border: Border.all(color: Colors.white, width: 2),
              image: DecorationImage(
                  image: AssetImage('images/$imgProfile'),
                  fit: BoxFit.contain)),
        ),
        added
            ? Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 6, color: Colors.red)),
                child: Image.asset(
                  'images/ic_add2.png',
                  color: Colors.white,
                  fit: BoxFit.contain,
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
