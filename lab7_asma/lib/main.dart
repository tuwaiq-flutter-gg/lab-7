import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:lab7_asma/STC/AddImage.dart';
import 'package:lab7_asma/STC/profile.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProFile(image: [],),
    );
  }
}
