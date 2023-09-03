import 'package:flutter/material.dart';
import 'package:tiktokcloneapp/screen/profile/views/likes_widget.dart';
import 'package:tiktokcloneapp/screen/profile/views/profile_widget.dart';

import 'views/profile_tab.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const SliverAppBar(
              expandedHeight: 330,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 8),
                        ProfileWidget(
                            initialName: 'B', username: '@userBilardo'),
                        SizedBox(height: 20),
                        LikesWidget(),
                        SizedBox(height: 8),
                        Text('bio here'),
                        SizedBox(height: 16),
                      ],
                    ),
                  ],
                ),
              ),
              bottom: TabBar(tabs: [
                Tab(icon: Icon(Icons.grid_3x3, color: Colors.black)),
                Tab(icon: Icon(Icons.lock, color: Colors.black)),
                Tab(icon: Icon(Icons.favorite_border, color: Colors.black)),
                Tab(
                    icon:
                        Icon(Icons.bookmark_add_outlined, color: Colors.black)),
                Tab(icon: Icon(Icons.favorite_border, color: Colors.black)),
              ]))
        ],
        body: TabBarView(
          children: [
            ProfileTabView(),
            ProfileTabView(),
            ProfileTabView(),
            ProfileTabView(),
            ProfileTabView(),
          ],
        ),
      ),
    );
  }
}
