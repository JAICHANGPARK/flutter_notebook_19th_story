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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dream Walker"),
                        Text("Project Manager"),
                      ],
                    ),
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
              Text("Food App Project Discussion"),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. U",
              ),
              Row(
                children: [
                  Expanded(
                      child: SizedBox(
                    height: 48,
                  )),
                  Container(
                    decoration: BoxDecoration(),
                    child: Row(
                      children: [
                        Text(
                          "Join Now",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.white,
                            size: 12,
                          ),
                        )
                      ],
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
