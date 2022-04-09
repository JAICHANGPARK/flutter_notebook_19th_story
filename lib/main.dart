import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1117_staking_app/staking_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  runApp(
    const ProviderScope(
      child: StakingApp(),
    ),
  );
}
