import 'package:flutter/material.dart';

class EcourseDetailPage extends StatefulWidget {
  const EcourseDetailPage({Key? key}) : super(key: key);

  @override
  State<EcourseDetailPage> createState() => _EcourseDetailPageState();
}

class _EcourseDetailPageState extends State<EcourseDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: Column(
        children: [
          Container(
            height: 280,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
