import 'package:flutter/material.dart';
import 'package:lab7/components/page1_profile/HomePage.dart';
import 'package:lab7/components/page2_addPic/AddPicture.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'HomePage',
      routes: {
        'HomePage' :(context) => HomePage(),
        'AddPicture' :(context) => AddPicture(),
      },
    );
  }
}
