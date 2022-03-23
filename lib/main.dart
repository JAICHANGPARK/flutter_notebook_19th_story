import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1101_mail_inbox_app/mail_inbox_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


main() {
  runApp(ProviderScope(child: const MailInboxApp()));
}