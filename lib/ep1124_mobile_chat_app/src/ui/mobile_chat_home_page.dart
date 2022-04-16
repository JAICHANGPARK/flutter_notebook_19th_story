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
      body: Stack(
        children: [
          Positioned(
            left: 4,
            right: 4,
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Messages",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomTabIndex,
        onTap: (idx) {
          setState(() {
            _bottomTabIndex = idx;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.send), label: "Messages"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Container(
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
          child: const Icon(
            Icons.edit,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
