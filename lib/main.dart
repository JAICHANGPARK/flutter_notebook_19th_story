import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'ep1124_mobile_chat_app/mobile_chat_app.dart';

main() {
  runApp(
    const ProviderScope(
      child: MobileChatApp(),
    ),
  );
}
