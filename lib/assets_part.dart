import 'package:crypto_mobile/recommendedItemlist.dart';
import 'package:flutter/material.dart';

import 'detail_page.dart';

class assetsPart extends StatefulWidget {
  assetsPart({super.key});

  @override
  State<assetsPart> createState() => _assetsPartState();
}

class _assetsPartState extends State<assetsPart> {
  List imgList = [
    Image.asset("images/bitcoin.png"),
    Image.asset("images/chainlink.png"),
    Image.asset("images/dogecoin.png"),
    Image.asset("images/ethereum.png"),
  ];
  List<String> crytoName = ["Bitcoin", "ChainLink", "Dogec", "Ethereum"];

  List imgRecommended = [
    const AssetImage('images/shiba.png'),
    const AssetImage('images/binance.png'),
    const AssetImage('images/solana.png'),
  ];
  List<String> recName = ["Shiba", "Binance", "Solana"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30.0, right: 30.0, left: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Assets",
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                  Icon(
                    Icons.add,
                    size: 30.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: SingleChildScrollView(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Container(
                        height: 60.0,
                        child: Row(
                          children: [
                            Container(
                              height: 60.0,
                              width: 40.0,
                              child: Column(
                                children: [
                                  imgList[index],
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            SizedBox(
                              width: 80.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    crytoName[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.0),
                                  ),
                                  Text(
                                    "0.5BTC",
                                    style: TextStyle(fontSize: 13.0),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 29.0,
                            ),
                            SizedBox(
                              width: 80,
                              child: Image.asset('images/chart.png'),
                            ),
                            SizedBox(
                              width: 29.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "\$16,405.51",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.0),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$761",
                                      style: TextStyle(fontSize: 13.0),
                                    ),
                                    Text(
                                      "-4.43%",
                                      style: TextStyle(
                                          fontSize: 13.0, color: Colors.red),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Row(
                children: [
                  Text(
                    'Recommended to Buy',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailPage()),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: SizedBox(
                  height: 150.0,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return RecommendedItem(
                        image: imgRecommended[index],
                        crytoName: recName[index],
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
