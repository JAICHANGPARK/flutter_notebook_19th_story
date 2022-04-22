

import 'package:flutter/material.dart';

class ClassHotelPage extends StatefulWidget {
  const ClassHotelPage({Key? key}) : super(key: key);

  @override
  State<ClassHotelPage> createState() => _ClassHotelPageState();
}

class _ClassHotelPageState extends State<ClassHotelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              CircleAvatar(

                child: Icon(Icons.arrow_back_ios,),
              )
            ],
          )
        ],
      ),
    );
  }
}
