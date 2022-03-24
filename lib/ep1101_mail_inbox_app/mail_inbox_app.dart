import 'package:flutter/material.dart';

import 'src/ui/mail_inbox_home_page.dart';

class MailInboxApp extends StatelessWidget {
  const MailInboxApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => MainInboxHomePage(),
      },
    );
  }
}
