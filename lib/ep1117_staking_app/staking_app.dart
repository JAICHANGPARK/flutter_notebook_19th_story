import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1117_staking_app/src/ui/staking_main_page.dart';

class StakingApp extends StatelessWidget {
  const StakingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StakingMainPage(),
    );
  }
}
