import 'package:assignment_2nd/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WaterTrackerApp extends StatelessWidget {
  const WaterTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
