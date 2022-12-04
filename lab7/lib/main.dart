import 'package:flutter/material.dart';
import 'package:lab7/src/addImage.dart';
import 'package:lab7/src/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        AddImage.addImage: (context) => AddImage(),
      },
    );
  }
}
