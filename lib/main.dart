import 'package:assignment_project/features/home/home.dart';
import 'package:flutter/material.dart';

import 'utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// -- Entry point of Flutter App
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AAppTheme.lightTheme,
      home: const HomeScreen(),
    );
  }
}
