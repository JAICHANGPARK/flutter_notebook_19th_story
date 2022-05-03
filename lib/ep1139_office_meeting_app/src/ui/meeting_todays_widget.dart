import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1139_office_meeting_app/src/enums/meeting_state.dart';

import 'widgets/today_card_widget.dart';

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
        TodayBasicCardWidget(
          cardColor: Colors.yellow,
          enumMeetingState: EnumMeetingState.online,
        ),
        TodayBasicCardWidget(
          cardColor: Colors.blue,
          enumMeetingState: EnumMeetingState.notYet,
        ),
        TodayBasicCardWidget(
          cardColor: Colors.cyan,
          enumMeetingState: EnumMeetingState.done,
        ),
      ],
    );
  }
}
