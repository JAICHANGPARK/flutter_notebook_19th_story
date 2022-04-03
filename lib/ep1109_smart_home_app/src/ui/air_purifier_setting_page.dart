import 'package:flutter/material.dart';

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
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                ),
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      "Air purifier",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                      ),
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
                  icon: Icon(Icons.link),
                  color: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
