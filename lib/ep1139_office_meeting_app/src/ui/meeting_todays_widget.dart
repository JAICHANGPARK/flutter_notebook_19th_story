import 'package:flutter/material.dart';

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
        TodayBasicCardWidget(),
        TodayBasicCardWidget(),
        TodayBasicCardWidget(),
      ],
    );
  }
}
