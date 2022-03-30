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
                top: 0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.chevron_left),
                      color: Colors.white,
                    ),
                    Expanded(
                        child: Center(
                      child: Text(
                        "Specialist",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )),
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
