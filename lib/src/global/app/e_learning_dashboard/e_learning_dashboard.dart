import 'package:e_learning_dashboard/src/global/app/app_barrel.dart';
import 'package:e_learning_dashboard/src/ui/ui_barrel.dart';
import 'package:flutter/material.dart';

class ELearningDashboardApp extends StatelessWidget {
  const ELearningDashboardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      themeMode: ThemeMode.light,
      theme: AppTheme.light,
    );
  }
}
