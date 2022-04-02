import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1109_smart_home_app/src/utils/theme.dart';

class SmartHomeMainPage extends StatelessWidget {
  const SmartHomeMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kShaPrimary,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: kShaAccents,
              ),
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "user12345",
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Placeholder(),
                )),
            Expanded(
              flex: 6,
              child: Placeholder(),
            ),
          ],
        ),
      ),
    );
  }
}
