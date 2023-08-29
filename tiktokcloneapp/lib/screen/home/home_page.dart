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
        PostView(colors: Colors.redAccent),
        PostView(colors: Colors.yellowAccent),
        PostView(colors: Colors.blueAccent),
      ],
    ));
  }
}
