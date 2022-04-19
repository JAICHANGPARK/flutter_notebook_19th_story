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
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300,),
                      ),
                      Text(
                        "Dreamwalker",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
