import 'package:flutter/material.dart';
import 'package:tiktokcloneapp/screen/home/view/profile_widget.dart';

import 'button_post_widget.dart';

class PostView extends StatelessWidget {
  final String username;
  final String description;
  final String tag;
  final String likeNumber;
  final String commentNumber;
  final String bookmarkNumber;

  const PostView(
      {required this.username,
      required this.description,
      required this.tag,
      required this.likeNumber,
      required this.commentNumber,
      required this.bookmarkNumber,
      Key? key})
      : super(key: key);

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
                Text(
                  username,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                RichText(
                    text: TextSpan(
                        style: const TextStyle(color: Colors.white),
                        children: [
                      TextSpan(text: description),
                      TextSpan(
                          text: tag,
                          style: const TextStyle(fontWeight: FontWeight.bold))
                    ]))
              ],
            ),
          ),
          Container(
            alignment: const Alignment(1, 1),
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ProfileWidget(
                  imgProfile: 'profile_sample.png',
                ),
                const SizedBox(height: 12),
                ButtonPostWidget(
                  icons: Icons.favorite,
                  number: likeNumber,
                ),
                const SizedBox(height: 12),
                ButtonPostWidget(
                  imgIcon: 'ic_comment.png',
                  number: commentNumber,
                ),
                const SizedBox(height: 12),
                ButtonPostWidget(
                  icons: Icons.bookmark,
                  number: bookmarkNumber,
                ),
                const SizedBox(height: 12),
                const ButtonPostWidget(
                  imgIcon: 'ic_share.png',
                  number: 'Share',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
