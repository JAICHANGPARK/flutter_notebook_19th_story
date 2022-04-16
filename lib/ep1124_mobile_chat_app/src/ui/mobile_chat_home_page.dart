import 'package:flutter/material.dart';

class MobileChatHomePage extends StatefulWidget {
  const MobileChatHomePage({Key? key}) : super(key: key);

  @override
  State<MobileChatHomePage> createState() => _MobileChatHomePageState();
}

class _MobileChatHomePageState extends State<MobileChatHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.send), label: "Messages"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
