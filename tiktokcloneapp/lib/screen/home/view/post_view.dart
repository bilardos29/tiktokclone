import 'package:flutter/material.dart';

import 'button_post_widget.dart';

class PostView extends StatelessWidget {
  final Color colors;

  const PostView({required this.colors, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black45,
      child: Stack(
        children: [
          //Post Video

          //Caption username and description
          Container(
            alignment: Alignment(-1, 1),
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Pet World",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: "showing pet in the world",
                      style: TextStyle(color: Colors.white)),
                  TextSpan(
                      text: "#fyp #pet #viral",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold))
                ]))
              ],
            ),
          ),
          Container(
            alignment: Alignment(1, 1),
            padding: EdgeInsets.all(20),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ButtonPostWidget(
                  icons: Icons.favorite,
                  number: '1.2M',
                ),
                SizedBox(height: 16),
                ButtonPostWidget(
                  icons: Icons.chat_bubble,
                  number: '12.5M',
                ),
                SizedBox(height: 16),
                ButtonPostWidget(
                  icons: Icons.send,
                  number: '12K',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
