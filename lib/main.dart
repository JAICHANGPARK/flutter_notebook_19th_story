import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1121_crypto_analysis_app/crypto_analysis_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  runApp(
    const ProviderScope(
      child: CryptoAnalysisApp(),
    ),
  );
}
