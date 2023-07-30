import 'package:cam_test/core/constants/strings.dart';
import 'package:cam_test/core/constants/styles.dart';
import 'package:cam_test/screens/result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const homeBackgroundImage = "assets/images/home_background.png";

    int dropdownvalue = 1;
    List<int> items = [for (int i = 1; i <= 5; i++) i];
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: size.height,
            width: size.width,
            child: Image.asset(
              homeBackgroundImage,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size.width * .7,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    border: Border.all(width: 1, color: Colors.black),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      const Text(
                        Strings.infoText,
                        style: Styles.textStyle,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        maxLines: 2,
                        minLines: 2,
                        decoration: InputDecoration(
                          hintText: "Ma'lumot kiriting...",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        Strings.testCodeText,
                        style: Styles.textStyle,
                        textAlign: TextAlign.center,
                      ),
                      DropdownButton(
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: items.map((int items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items.toString()),
                          );
                        }).toList(),
                        onChanged: (int? newValue) {
                          setState(
                            () {
                              dropdownvalue = newValue!;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        Strings.exitText,
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 24,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Colors.white,
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) {
                                return ResultScreen();
                              },
                            ),
                          );
                        },
                        icon: const Icon(
                          CupertinoIcons.camera_fill,
                          size: 40,
                          shadows: [],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
