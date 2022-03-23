import 'package:flutter/material.dart';

class MainInboxHomePage extends StatefulWidget {
  const MainInboxHomePage({Key? key}) : super(key: key);

  @override
  State<MainInboxHomePage> createState() => _MainInboxHomePageState();
}

class _MainInboxHomePageState extends State<MainInboxHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
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
        child: Icon(Icons.mail),
      ),
    );
  }
}
