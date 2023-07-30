import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height:MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width,
        child: Image.asset("assets/images/home_background.png",fit: BoxFit.cover,filterQuality: FilterQuality.high,)
      ),


    );
  }
}
