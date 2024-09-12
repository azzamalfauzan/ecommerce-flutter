import 'package:flutter/material.dart';
import 'package:ui_e_commerce/pages/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/":(context) => Homepage(),
        // "cartPage": (context) => cartPage(),
        // "itemPage": (context) => itemPage(),
      },
    );
  }
}