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
    const String infoText = 'ABITURIYENT HAQIDA MA\'LUMOT';
    // Initial Selected Value
    String dropdownvalue = '1';

    // List of items in our dropdown menu
    var items = [
      '1',
      '2',
      '3',
      '4',
      '5',
    ];
    TextStyle textStyle =
        const TextStyle(fontSize: 24, overflow: TextOverflow.ellipsis,fontWeight: FontWeight.bold);
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
          SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // height: ,
                  width: 350,
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white),
                  child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          infoText,
                          style: textStyle,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                        ),
                        const TextField(
                          maxLines: 2,
                          minLines: 2,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                          ),
                        ),
                        const SizedBox(height: 50),
                        Text(
                          "TEST KODI:",
                          style: textStyle,
                          textAlign: TextAlign.center,
                        ),
                        DropdownButton(
                          value: dropdownvalue,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ]),
                ),

                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      
                        onPressed: () {},
                        child: const Text(
                          "CHIQISH",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 24,
                              fontWeight: FontWeight.w900),
                        ),),
                    IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.camera_fill,size: 50,shadows: [
                      BoxShadow(color: Colors.white,
                        blurRadius: 10,
                        offset: Offset(5, 5),
                        
                      ),
                      BoxShadow(color: Colors.white,
                        blurRadius: 10,
                        offset: Offset(-5, 5),

                      ),
                      BoxShadow(color: Colors.white,
                        blurRadius: 10,
                        offset: Offset(-5,- 5),

                      ),
                      BoxShadow(color: Colors.white,
                        blurRadius: 10,
                        offset: Offset(5,- 5),

                      )
                      
                    ],))

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
