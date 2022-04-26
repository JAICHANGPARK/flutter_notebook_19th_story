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
            Positioned(
              left: 16,
              top: 0,
              bottom: 0,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Text(
                          "Hi Dream 👋",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.purple.withOpacity(0.2),
                          foregroundColor: Colors.purple,
                          child: Icon(
                            Icons.notifications_outlined,
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "Top Categories",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
