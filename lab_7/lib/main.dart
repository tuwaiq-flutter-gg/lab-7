import 'package:flutter/material.dart';
import 'package:lab_7/Pages/Add%20Images.dart';
import 'package:lab_7/Pages/Home%20Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
