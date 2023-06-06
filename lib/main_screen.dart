import 'package:crypto_mobile/assets_part.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<String> titles = [
    "Main Portfolio",
    "Top 10 coins",
    "Experimental",
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
              color: Color(0xfff1257DD),
              // gradient: LinearGradient(
              //   colors: [
              //     Color(0xfff1257DD),
              //     Color(0xfff1257DD).withOpacity(0.8)
              //   ],
              // ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 100.0,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 15),
                                height: 30.0,
                                width: 110.0,
                                decoration: BoxDecoration(
                                  // color: Color(0xfff3678F5),
                                  color: index == 0
                                      ? Color(0xfff3678F5)
                                      : Color(0xfff1257DD),

                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 5.0),
                                  child: Text(
                                    titles[index],
                                    style: TextStyle(
                                      color: index == 0
                                          ? Color.fromARGB(255, 228, 229, 231)
                                          : Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 5.0, right: 25.0, left: 25.0, bottom: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "\$5,276.39",
                                  style: TextStyle(
                                      fontSize: 50.0, color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Text(
                              "+92% all Time",
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Color.fromARGB(255, 228, 229, 231),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 18.0),
                          child: Container(
                            height: 45.0,
                            width: 45.0,
                            decoration: BoxDecoration(
                              color: Color(0xfff2363E0),
                              borderRadius: BorderRadius.circular(200),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.broken_image_outlined,
                                color: Color.fromARGB(255, 228, 229, 231),
                                size: 30.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 220.0),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: assetsPart(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 750.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 228, 229, 231),
                    spreadRadius: 2,
                    blurRadius: 2)
              ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home),
                  Icon(Icons.timelapse_outlined),
                  Icon(
                    Icons.notifications_active,
                    color: Colors.blue,
                  ),
                  Icon(Icons.person),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
