import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'ep1136_business_assistance_app/biz_assist_app.dart';

main() {
  runApp(
    const ProviderScope(
      child: BusinessAssistanceApp(),
    ),
  );
}
