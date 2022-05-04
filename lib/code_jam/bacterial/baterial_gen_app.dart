

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'src/ui/interative_widget.dart';

class BaterialGenApp extends StatelessWidget {
  const BaterialGenApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      title: 'Flutter Clutter Bacterial Growth',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        backgroundColor: Colors.white,
        body: PetriDish(),
      ),
    );
  }
}
