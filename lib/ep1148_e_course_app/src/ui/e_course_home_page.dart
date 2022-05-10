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
      body: Column(
        children: [
          Expanded(child: Placeholder()),
          Divider(
            color: Colors.grey,
          ),
          Container(
            height: 72,
            decoration: BoxDecoration(),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Ionicons.home_outline,
                  ),
                  iconSize: 38,
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
