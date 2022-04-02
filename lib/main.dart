import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1109_smart_home_app/smart_home_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  runApp(
    const ProviderScope(
      child: SmartHomeApp(),
    ),
  );
}
