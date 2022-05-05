import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1143_fitness_mobile_app/fitness_mobile_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  runApp(
    const ProviderScope(
      child: FitnessMobileApp(),
    ),
  );
}
