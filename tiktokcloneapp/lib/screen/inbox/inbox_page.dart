import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../widgets/profile_frame_widget.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inbox'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            //List Profile live
            SizedBox(
                height: 120,
                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const Padding(
                        padding: EdgeInsets.only(right: 4, left: 4),
                        child: ProfileFrameWidget(
                          initialName: 'B',
                          enums: ProfileEnum.add,
                          username: 'bilardoSitumorang',
                          screen: PositionEnum.inbox,
                        ));
                  },
                )),


            //List Inbox
            //List contact advise
          ],
        ),
      ),
    );
  }
}
