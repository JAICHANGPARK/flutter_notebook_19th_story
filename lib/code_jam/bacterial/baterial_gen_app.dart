

import 'package:flutter/material.dart';

import 'src/ui/interative_widget.dart';

class BaterialGenApp extends StatelessWidget {
  const BaterialGenApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PetriDishIterative(),
    );
  }
}
