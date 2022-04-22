import 'package:flutter/material.dart';

import 'src/class_hotel_page.dart';

class ClassifiedApp extends StatelessWidget {
  const ClassifiedApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ClassHotelPage(),
    );
  }
}
