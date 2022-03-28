import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1105_fitness_workout_app/src/ui/fitness_workout_home_page.dart';


class FitnessWorkoutApp extends StatelessWidget {
  const FitnessWorkoutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FitnessWorkoutHomePage(),
    );
  }
}
