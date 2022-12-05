import 'package:flutter/material.dart';
import 'package:lab7/views/post_it.dart';
import 'package:lab7/views/profile.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: profile(),
    );
  }
}
