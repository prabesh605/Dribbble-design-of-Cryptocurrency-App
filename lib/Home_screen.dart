import 'package:flutter/material.dart';

import 'main_screen.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "images/cryptologo.png",
              ),
              const Text(
                "Track your \nCryptoCurrency portfolio in\nrealtime",
                style: TextStyle(fontSize: 50.0),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Create Portfolio ↗",
                  style: TextStyle(color: Colors.blue, fontSize: 25.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
