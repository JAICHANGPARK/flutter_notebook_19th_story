import 'package:flutter/material.dart';

class FitnessMobileMainPage extends StatefulWidget {
  const FitnessMobileMainPage({Key? key}) : super(key: key);

  @override
  State<FitnessMobileMainPage> createState() => _FitnessMobileMainPageState();
}

class _FitnessMobileMainPageState extends State<FitnessMobileMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.local_fire_department,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.restaurant,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.workspace_premium,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: "")
        ],
      ),
    );
  }
}
