

import 'package:flutter/material.dart';

import 'src/ui/podcast_home_page.dart';

class PodcastApp extends StatelessWidget {
  const PodcastApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PodcastHomePage(),
    );
  }
}
