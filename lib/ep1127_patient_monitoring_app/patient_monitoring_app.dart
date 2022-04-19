
import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1127_patient_monitoring_app/src/ui/monitoring_main_page.dart';

class PatientMonitoringApp extends StatelessWidget {
  const PatientMonitoringApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MonitoringMainPage(),
    );
  }
}
