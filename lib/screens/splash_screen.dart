import 'package:cam_test/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double animation = 0;

  @override
  void initState() {
    changer();
    super.initState();
  }

  void changer() async {
    Future.delayed(const Duration(seconds: 1)).whenComplete(
      () => setState(() {
        animation = 1;
      }),
    );
  }

  void goTo() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: AnimatedScale(
            scale: animation,
            duration: const Duration(seconds: 2),
            onEnd: goTo,
            child: AnimatedOpacity(
              opacity: animation,
              duration: const Duration(seconds: 2),
              child: Image.asset("assets/images/splash_logo.png"),
            ),
          ),
        ),
      ),
    );
  }
}
