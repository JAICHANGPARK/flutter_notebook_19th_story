import 'package:flutter/material.dart';

class LiveShowView extends StatefulWidget {
  const LiveShowView({Key? key}) : super(key: key);

  @override
  State<LiveShowView> createState() => _LiveShowViewState();
}

class _LiveShowViewState extends State<LiveShowView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.chevron_left),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.share),
                  color: Colors.white,
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
