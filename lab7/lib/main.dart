import 'package:flutter/material.dart';
import 'package:lab7/pages/fristPage.dart';
import 'package:lab7/pages/secoundPage.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
    home: fristPage(),
   //home: SecoundPage(),
    );
  }
}