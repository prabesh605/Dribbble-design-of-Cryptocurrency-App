import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 18.0),
                    child: Container(
                      height: 2.0,
                      width: 40.0,
                      decoration: BoxDecoration(color: Colors.grey),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0, top: 20.0),
                    child: Row(
                      children: [
                        Container(
                          height: 50.0,
                          width: 50.0,
                          child: Image.asset("images/binance.png"),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        const Column(
                          children: [
                            Text(
                              "Binance Coin",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 20.0),
                            ),
                            Text(
                              "BNB",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.0),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 120.0,
                        ),
                        Column(
                          children: [
                            Text(
                              "\$309.41",
                              style: TextStyle(fontSize: 20.0),
                            ),
                            Text(
                              "+16.21%",
                              style: TextStyle(
                                  color: Colors.green, fontSize: 18.0),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  Container(
                    height: 2.0,
                    width: 400.0,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 235, 234, 234),
                    ),
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LowHighVol(
                          name: "Low",
                          prize: "\$301.52",
                        ),
                        LowHighVol(
                          name: "High",
                          prize: "\$331.73",
                        ),
                        LowHighVol(
                          name: "Vol",
                          prize: "\$392M",
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 22.0, right: 25.0, left: 25.0),
                    child: Container(
                      height: 360,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 235, 234, 234),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "News",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17.0),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 1,
                    itemBuilder: (contex, index) => News(),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 740.0),
            child: Container(
              height: 80.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 235, 234, 234),
                    blurRadius: 80,
                    spreadRadius: 20,
                  )
                ],
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 25.0),
                      height: 45.0,
                      width: 250.0,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          Text(
                            "ADD TO PORTFOLIO",
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 45.0,
                    width: 110.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Icon(
                      Icons.notification_add,
                      color: Colors.white,
                      size: 25.0,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class News extends StatelessWidget {
  const News({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      height: 70.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Santander Blocks Binance Payments\nfor UK Customers",
            style: TextStyle(fontSize: 18.0),
          ),
          Container(
            height: 80.0,
            width: 80.0,
            child: Image.asset("images/san.jpg"),
          ),
        ],
      ),
    );
  }
}

class LowHighVol extends StatelessWidget {
  const LowHighVol({this.name, this.prize});
  final name;
  final prize;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15.0,
          ),
        ),
        Text(
          prize,
          style: TextStyle(fontSize: 20.0),
        ),
      ],
    );
  }
}
