import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1109_smart_home_app/src/utils/theme.dart';

class AirPurifierSettingPage extends StatefulWidget {
  const AirPurifierSettingPage({Key? key}) : super(key: key);

  @override
  State<AirPurifierSettingPage> createState() => _AirPurifierSettingPageState();
}

class _AirPurifierSettingPageState extends State<AirPurifierSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                  ),
                  Expanded(
                      child: Column(
                    children: const [
                      Text(
                        "Air purifier",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        "Bedroom",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.link),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 36),
              child: Column(
                children: [
                  Text(
                    "PM2.5ug/m3",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "0",
                        style: TextStyle(
                          color: kShaSecondary,
                          fontSize: 64,
                        ),
                      ),
                      Text(
                        "14",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 64,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              height: 0,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    "Air status",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.green,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Exellent",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 0,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
