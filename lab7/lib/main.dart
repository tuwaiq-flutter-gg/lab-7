import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab7/views/Homepage.dart';

void  main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}