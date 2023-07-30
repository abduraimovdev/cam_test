import 'package:cam_test/core/constants/strings.dart';
import 'package:cam_test/core/constants/styles.dart';
import 'package:flutter/material.dart';

class ResultData extends StatelessWidget {
  final String student;
  final String ball;
  final String result;

  const ResultData({
    super.key,
    required this.student,
    required this.ball,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .8,
      height: MediaQuery.sizeOf(context).height * .6,
      padding: const EdgeInsets.all(5),
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
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  Strings.abituriyent,
                  style: Styles.textStyle,
                ),
                Text(
                  student,
                  style: Styles.textStyle.copyWith(fontSize: 27),
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  Strings.ball,
                  style: Styles.textStyle,
                ),
                Center(
                  child: Text(
                    ball,
                    textAlign: TextAlign.center,
                    style: Styles.textStyle.copyWith(fontSize: 60),
                  ),
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
                const Text(
                  Strings.errorQuestion,
                  style: Styles.textStyle,
                ),
                Text(
                  result,
                  style: Styles.textStyle.copyWith(fontSize: 27),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}