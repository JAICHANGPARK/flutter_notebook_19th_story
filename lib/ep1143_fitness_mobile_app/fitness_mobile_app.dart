import 'package:flutter/material.dart';

import 'src/fitness_start_screen.dart';

class FitnessMobileApp extends StatelessWidget {
  const FitnessMobileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FitnessStartScreen(),
    );
  }
}
