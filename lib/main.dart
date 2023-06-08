import 'package:crypto_mobile/main_screen.dart';
import 'package:flutter/material.dart';

import 'Home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: home_screen(),
    );
  }
}
