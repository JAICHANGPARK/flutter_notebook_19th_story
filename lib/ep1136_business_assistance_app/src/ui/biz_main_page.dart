import 'package:flutter/material.dart';

class BizMainPage extends StatefulWidget {
  const BizMainPage({Key? key}) : super(key: key);

  @override
  State<BizMainPage> createState() => _BizMainPageState();
}

class _BizMainPageState extends State<BizMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Icon(Icons.menu),
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Company finance"),
              ),
              SizedBox(
                height: 72,
              ),
              Expanded(child: Placeholder()),
            ],
          ),
        ),
      ),
    );
  }
}
