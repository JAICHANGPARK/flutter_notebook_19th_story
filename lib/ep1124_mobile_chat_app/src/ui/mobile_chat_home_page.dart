import 'package:flutter/material.dart';

class MobileChatHomePage extends StatefulWidget {
  const MobileChatHomePage({Key? key}) : super(key: key);

  @override
  State<MobileChatHomePage> createState() => _MobileChatHomePageState();
}

class _MobileChatHomePageState extends State<MobileChatHomePage> {
  int _bottomTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomTabIndex,
        onTap: (idx){
          setState((){
            _bottomTabIndex = idx;
          });
        },
        items: [
          const BottomNavigationBarItem(icon: const Icon(Icons.send), label: "Messages"),
          const BottomNavigationBarItem(icon: const Icon(Icons.call), label: "Call"),
          const BottomNavigationBarItem(icon: const Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
