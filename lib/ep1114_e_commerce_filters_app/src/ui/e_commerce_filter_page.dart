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
          TextButton(
            onPressed: () {},
            child: Text("Reset"),
            style: TextButton.styleFrom(
              primary: Colors.black,
            ),
          ),
        ],
        title: Text("Filter"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Category",
                  style: TextStyle(fontSize: 16),
                ),
                Spacer(),
                Text(
                  "View all",
                  style: TextStyle(fontSize: 16),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
              ],
            )
          ],
        ),
      ),
    );
  }
}
