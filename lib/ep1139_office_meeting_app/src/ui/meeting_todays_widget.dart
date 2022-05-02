import 'package:flutter/material.dart';

class MeetingTodaysWidget extends StatefulWidget {
  const MeetingTodaysWidget({Key? key}) : super(key: key);

  @override
  State<MeetingTodaysWidget> createState() => _MeetingTodaysWidgetState();
}

class _MeetingTodaysWidgetState extends State<MeetingTodaysWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.yellow[100], borderRadius: BorderRadius.circular(8)),
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dream Walker"),
                      Text("Project Manager"),
                    ],
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.green,
                  ),
                  Text(
                    "on Going Meeting",
                    style: TextStyle(
                      color: Colors.orangeAccent,
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
