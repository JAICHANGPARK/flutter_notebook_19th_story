import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1105_fitness_workout_app/ep1105_fitness_workout_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  runApp(
    const ProviderScope(
      child: FitnessWorkoutApp(),
    ),
  );
}
