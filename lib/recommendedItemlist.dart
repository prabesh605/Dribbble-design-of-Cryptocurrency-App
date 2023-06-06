import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommendedItem extends StatelessWidget {
  RecommendedItem({this.image, this.crytoName});
  final image;
  final crytoName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 5.0),
          child: Container(
            width: 130.0,
            height: 120.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 1,
                      color: Color.fromARGB(255, 228, 229, 231),
                      spreadRadius: 1),
                ]),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 5.0, top: 5.0),
                  alignment: Alignment.bottomLeft,
                  child: Image(
                    height: 35.0,
                    image: image,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 5.0, top: 30.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    crytoName,
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 5.0),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        "\$1.23",
                        style: TextStyle(fontSize: 12.5),
                      ),
                      SizedBox(
                        width: 2.0,
                      ),
                      Text(
                        "+5.83%",
                        style: TextStyle(color: Colors.red, fontSize: 12.5),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
