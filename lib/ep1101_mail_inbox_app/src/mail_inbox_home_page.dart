import 'package:flutter/material.dart';

class MainInboxHomePage extends StatefulWidget {
  const MainInboxHomePage({Key? key}) : super(key: key);

  @override
  State<MainInboxHomePage> createState() => _MainInboxHomePageState();
}

class _MainInboxHomePageState extends State<MainInboxHomePage> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.white,
      drawerEnableOpenDragGesture: false,
      drawer: Drawer(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {

                        _globalKey.currentState!.openDrawer();
                      },
                      icon: const Icon(Icons.menu),
                    ),
                    const Expanded(
                        child: Center(
                      child: Text(
                        "Inbox (122)",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              height: 0,
              color: Colors.grey[300],
            ),
            Expanded(
              child: ListView(
                children: [],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.email_outlined),
      ),
    );
  }
}
