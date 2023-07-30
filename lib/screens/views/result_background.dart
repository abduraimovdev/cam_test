import 'package:flutter/material.dart';

class ResultBackground extends StatelessWidget {
  final Widget child;

  const ResultBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width * .1),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/result_background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
