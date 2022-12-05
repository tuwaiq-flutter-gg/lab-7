import 'package:flutter/material.dart';
import 'package:lab7/components/bio.dart';
import 'package:lab7/components/imagesgrid.dart';
import 'package:lab7/components/profile.dart';
import 'package:lab7/main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgcolor,
        body: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Profile(),
            Bio(),
            ImagesGrid(),
          ],
        ));
  }
}
