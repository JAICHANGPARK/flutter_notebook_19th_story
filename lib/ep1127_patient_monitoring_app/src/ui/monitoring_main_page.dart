import 'package:flutter/material.dart';

class MonitoringMainPage extends StatefulWidget {
  const MonitoringMainPage({Key? key}) : super(key: key);

  @override
  State<MonitoringMainPage> createState() => _MonitoringMainPageState();
}

class _MonitoringMainPageState extends State<MonitoringMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Dreamwalker",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 54,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
