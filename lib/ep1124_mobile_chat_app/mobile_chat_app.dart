import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1124_mobile_chat_app/src/ui/mobile_chat_home_page.dart';

class MobileChatApp extends StatelessWidget {
  const MobileChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MobileChatHomePage(),
    );
  }
}
