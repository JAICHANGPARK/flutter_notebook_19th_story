import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1139_office_meeting_app/src/enums/meeting_state.dart';
import 'package:flutter_notebook_19th_story/generated/i18n.dart';

class MeetingButtonWidget extends StatelessWidget {
  MeetingButtonWidget({
    Key? key,
    this.enumMeetingState,
    this.color,
  }) : super(key: key);
  EnumMeetingState? enumMeetingState;
  MaterialColor? color;

  @override
  Widget build(BuildContext context) {
    if (enumMeetingState == EnumMeetingState.online) {
      return Container(
        decoration: BoxDecoration(
          color: color![700],
          borderRadius: BorderRadius.circular(3),
        ),
        padding: const EdgeInsets.all(8),
        child: Row(
          children: const [
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
      );
    }
    else if(enumMeetingState == EnumMeetingState.notYet){
      return Container(
        decoration: BoxDecoration(
          color: color![700],
          borderRadius: BorderRadius.circular(3),
        ),
        padding: const EdgeInsets.all(8),
        child: Row(
          children: const [
            Text(
              "Notify Me",
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
      );
    }
    return Container();
  }
}
