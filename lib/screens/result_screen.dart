import 'package:cam_test/core/constants/strings.dart';
import 'package:cam_test/core/constants/styles.dart';
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(Strings.abituriyent, style: Styles.resultStyles,),
                Text(
                  "BOTIROV JASUR / PAXTAKOR / 11-MAKTAB",
                  style: Styles.resultStyles.copyWith(fontSize: 27)
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(Strings.abituriyent, style: Styles.resultStyles,),
                Text(
                    "156,6",
                    textAlign: TextAlign.center,
                    style: Styles.resultStyles.copyWith(fontSize: 70)
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(Strings.abituriyent, style: Styles.resultStyles,),
                Text(
                    "BOTIROV JASUR / PAXTAKOR / 11-MAKTAB",
                    style: Styles.resultStyles.copyWith(fontSize: 27)
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
