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
            ResultData(),
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

class ResultData extends StatelessWidget {
  const ResultData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .8,
      height: MediaQuery.sizeOf(context).height * .6,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
        ],
      ),
    );
  }
}
