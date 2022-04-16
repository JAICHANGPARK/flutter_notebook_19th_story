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
        items:const [
           BottomNavigationBarItem(icon:  Icon(Icons.send), label: "Messages"),
           BottomNavigationBarItem(icon:  Icon(Icons.call), label: "Call"),
           BottomNavigationBarItem(icon:  Icon(Icons.settings), label: "Settings"),
        ],
      ),
      floatingActionButton: FloatingActionButton(

        backgroundColor: Colors.black,
        onPressed: () {  },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4)
          ),
          child: Icon(Icons.edit, color: Colors.black,),
        ),

      ),
    );
  }
}
