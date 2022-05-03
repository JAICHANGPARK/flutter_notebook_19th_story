import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1139_office_meeting_app/src/enums/meeting_state.dart';

class MeetingStateWidget extends StatelessWidget {
  MeetingStateWidget({
    Key? key,
    this.enumMeetingState,
    this.color,
  }) : super(key: key);
  EnumMeetingState? enumMeetingState;
  MaterialColor? color;

  @override
  Widget build(BuildContext context) {
    print("$enumMeetingState");
    if (enumMeetingState == EnumMeetingState.online) {
      return Row(
        children: const [
          CircleAvatar(
            radius: 4,
            backgroundColor: Colors.green,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "on Going Meeting",
            style: TextStyle(
              color: Colors.orangeAccent,
              fontSize: 12,
            ),
          )
        ],
      );
    } else if (enumMeetingState == EnumMeetingState.notYet) {
      return Row(
        children: [
           Text(
            "Not Started Yet",
            style: TextStyle(
              color: color,
              fontSize: 12,
            ),
          )
        ],
      );
    }
    return Container();
  }
}
