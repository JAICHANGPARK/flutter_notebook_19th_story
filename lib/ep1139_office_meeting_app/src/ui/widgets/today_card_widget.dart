import 'package:flutter/material.dart';

class TodayBasicCardWidget extends StatelessWidget {
  const TodayBasicCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow[100],
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
                const CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.green,
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "on Going Meeting",
                  style: TextStyle(color: Colors.orangeAccent, fontSize: 12),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Food App Project Discussion",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. U",
              style: TextStyle(
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
                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow[700],
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
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
