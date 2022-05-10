import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ECourseHomePage extends StatefulWidget {
  const ECourseHomePage({Key? key}) : super(key: key);

  @override
  State<ECourseHomePage> createState() => _ECourseHomePageState();
}

class _ECourseHomePageState extends State<ECourseHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Temukan Kursus"),
                  Text("Online Sesuai Minat"),
                  Container(
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              height: 72,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Ionicons.home_outline,
                    ),
                    iconSize: 28,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Ionicons.list_circle_outline,
                    ),
                    iconSize: 28,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Ionicons.bag_handle_outline,
                    ),
                    iconSize: 28,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Ionicons.person_outline,
                    ),
                    iconSize: 28,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
