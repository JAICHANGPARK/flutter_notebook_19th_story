import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1130_classified_app/classified_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  runApp(
    const ProviderScope(
      child: ClassifiedApp(),
    ),
  );
}
