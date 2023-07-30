import 'package:cam_test/screens/home_screen.dart';
import 'package:flutter/material.dart';

class CamApp extends StatelessWidget {
  const CamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      // darkTheme: ThemeData.dark(),
      theme: ThemeData.light(useMaterial3: true),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(),
      home: const HomeScreen(),
    );
  }
}
