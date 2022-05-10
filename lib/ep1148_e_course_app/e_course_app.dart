
import 'package:flutter/material.dart';

import 'src/ui/e_course_home_page.dart';

class ECourseApp extends StatelessWidget {
  const ECourseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ECourseHomePage(),
    );
  }
}
