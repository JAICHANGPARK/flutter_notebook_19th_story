import 'package:flutter/material.dart';

class PodcastHomePage extends StatefulWidget {
  const PodcastHomePage({Key? key}) : super(key: key);

  @override
  State<PodcastHomePage> createState() => _PodcastHomePageState();
}

class _PodcastHomePageState extends State<PodcastHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Hi Dream 👋"),
                    CircleAvatar(
                      backgroundColor: Colors.purple.withOpacity(0.5),
                      foregroundColor: Colors.purple,
                      child: Icon(Icons.notifications_outlined,),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
