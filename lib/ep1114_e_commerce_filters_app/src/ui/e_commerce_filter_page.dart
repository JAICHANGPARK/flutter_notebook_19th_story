import 'package:flutter/material.dart';

class ECommerceFilterPage extends StatefulWidget {
  const ECommerceFilterPage({Key? key}) : super(key: key);

  @override
  State<ECommerceFilterPage> createState() => _ECommerceFilterPageState();
}

class _ECommerceFilterPageState extends State<ECommerceFilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        actions: [
          TextButton(onPressed: () {}, child: Text("Reset")),
        ],
        title: Text("Filter"),
      ),
    );
  }
}
