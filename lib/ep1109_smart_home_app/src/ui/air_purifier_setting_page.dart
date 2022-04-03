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
            
          ],
        ),
      ),
    );
  }
}
