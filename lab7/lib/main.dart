import 'package:flutter/material.dart';
import 'package:lab7/Data/Data.dart';
import 'package:lab7/pages/home.dart';

Color cbl = Color(0xff282626);
Color cwh = Color(0xffFFFFFF);

void main() {
  print(data.length);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage(),
    );
  }
}
