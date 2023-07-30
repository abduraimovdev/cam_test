import 'package:cam_test/screens/views/app_button.dart';
import 'package:cam_test/screens/views/result_background.dart';
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
            Container(
              width: MediaQuery.sizeOf(context).width * .8,
              height: MediaQuery.sizeOf(context).height * .4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Column()),
                  Text("ABITURIYENT : "),
                  Text(
                    "BOTIROV JASUR / PAXTAKOR / 11-MAKTAB",
                    style: TextStyle(
                      fontSize: 27,
                    ),
                  ),
                ],
              ),
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
