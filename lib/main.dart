import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1148_e_course_app/e_course_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  runApp(
    const ProviderScope(
      child: ECourseApp(),
    ),
  );
}
