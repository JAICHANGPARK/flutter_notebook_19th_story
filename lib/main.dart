import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/code_jam/bacterial/baterial_gen_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'ep1139_office_meeting_app/office_meeting_app.dart';

main() {
  runApp(
    const ProviderScope(
      child: BaterialGenApp(),
    ),
  );
}
