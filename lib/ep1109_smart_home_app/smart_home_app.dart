import 'package:flutter/material.dart';

import 'src/ui/smart_home_main_page.dart';

class SmartHomeApp extends StatelessWidget {
  const SmartHomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SmartHomeMainPage(),
    );
  }
}
