import 'package:cam_test/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class CamApp extends StatelessWidget {
  const CamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
