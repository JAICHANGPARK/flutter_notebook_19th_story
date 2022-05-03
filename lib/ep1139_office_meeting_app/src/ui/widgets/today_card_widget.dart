import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1139_office_meeting_app/src/enums/meeting_state.dart';
import 'package:flutter_notebook_19th_story/ep1139_office_meeting_app/src/ui/widgets/meeting_button_widget.dart';
import 'package:flutter_notebook_19th_story/ep1139_office_meeting_app/src/ui/widgets/meeting_state_widget.dart';

class TodayBasicCardWidget extends StatelessWidget {
  TodayBasicCardWidget({
    Key? key,
    required this.enumMeetingState,
    required this.cardColor,
    this.title,
    this.subtitle,
  }) : super(key: key);
  EnumMeetingState enumMeetingState;
  MaterialColor cardColor;
  String? title;
  String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          color: cardColor[100],
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Dream Walker",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Project Manager",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                MeetingStateWidget(
                  enumMeetingState: enumMeetingState,
                  color: cardColor,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              // "Food App Project Discussion",
              title ?? "Unknown Meeting",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              subtitle ??
                  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiconst usmod tempor incididunt ut labore et dolore magna aliqua. U",
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                const Expanded(
                  child: SizedBox(
                    height: 48,
                  ),
                ),
                MeetingButtonWidget(
                  enumMeetingState: enumMeetingState,
                  color: cardColor,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
