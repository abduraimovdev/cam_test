import 'package:cam_test/core/constants/strings.dart';
import 'package:cam_test/core/constants/styles.dart';
import 'package:cam_test/screens/views/app_button.dart';
import 'package:cam_test/screens/views/result_background.dart';
import 'package:cam_test/screens/views/result_data.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResultBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const ResultData(
              student: "BOTIROV JASUR / PAXTAKOR / 11-MAKTAB",
              ball: "156,6",
              result:
                  "4,13,35,47,58,73,87,33,33,33,33,33,33,33,33,33,33,33,33,33,33,33,33,33,33,33,33,33,33,33,33,33",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppButton(
                  label: "Orqaga",
                  onPress: () {},
                ),
                AppButton(
                  label: "Chiqish",
                  onPress: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


