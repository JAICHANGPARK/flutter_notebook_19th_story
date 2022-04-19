import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1127_patient_monitoring_app/patient_monitoring_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  runApp(
    const ProviderScope(
      child: PatientMonitoringApp(),
    ),
  );
}
