import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'ep1139_office_meeting_app/office_meeting_app.dart';

main() {
  runApp(
    const ProviderScope(
      child: OfficeMeetingApp(),
    ),
  );
}
