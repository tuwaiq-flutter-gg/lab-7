import 'package:flutter/material.dart';

import 'package:lab51/pages/Home.dart';
import 'package:lab51/pages/secpage.dart';
import 'package:lab51/pages/third.dart';

main (){ 
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


class project2 extends StatelessWidget {
  const project2({super.key});

  @override
  Widget build(BuildContext context) {
    return 

Homepage();

   
  }
}