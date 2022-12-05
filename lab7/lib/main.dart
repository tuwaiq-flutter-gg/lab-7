import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab7/All/page/Post.dart';

import 'All/page/UserProfile.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserProfile(),
      routes: {"UserProfile": (context) => UserProfile()},
    );
  }
}
