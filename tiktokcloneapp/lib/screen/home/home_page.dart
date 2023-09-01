import 'package:flutter/material.dart';
import 'package:tiktokcloneapp/screen/home/view/post_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: const [
        PostView(
          username: 'Pet World',
          description: 'Funny pet playing outside',
          tag: '#fyp #viral #pet',
          likeNumber: '1.2M',
          commentNumber: '1234',
          bookmarkNumber: '12.5K',
        ),
        PostView(
          username: 'Secret Keyword',
          description: 'Secret message for 1% people',
          tag: '#fyp #viral #message',
          likeNumber: '1.2M',
          commentNumber: '1234',
          bookmarkNumber: '12.5K',
        ),
        PostView(
          username: 'Nationality',
          description: 'Sun will be collapse',
          tag: '#fyp #viral #nationality',
          likeNumber: '1.0M',
          commentNumber: '1234',
          bookmarkNumber: '12.5K',
        ),
      ],
    ));
  }
}
