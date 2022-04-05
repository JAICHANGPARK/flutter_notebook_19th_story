import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'ep1114_e_commerce_filters_app/ep1114_e_commerce_filters_app.dart';

main() {
  runApp(
    const ProviderScope(
      child: ECommerceFiltersApp(),
    ),
  );
}
