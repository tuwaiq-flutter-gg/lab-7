import 'package:flutter/material.dart';
import 'package:lab7/HomeScreen.dart';

Color bgcolor = Color(0xff282626);
Color bcolors = Color(0xffFFFFFF);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
