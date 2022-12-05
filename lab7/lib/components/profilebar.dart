import 'package:flutter/material.dart';
import 'package:lab7/main.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({super.key, required this.name, required this.number});
  final String name;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(number.toString(),
            style: TextStyle(color: bcolors, fontWeight: FontWeight.bold)),
        SizedBox(
          height: 5,
        ),
        Text(
          name.toString(),
          style: TextStyle(color: bcolors),
        ),
      ],
    );
  }
}