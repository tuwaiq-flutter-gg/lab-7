import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab7/main.dart';

class detail extends StatelessWidget {
  const detail({super.key, required this.name, required this.number});
  final String name;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(number.toString(),
            style: TextStyle(color: cwh, fontWeight: FontWeight.bold)),
        SizedBox(
          height: 5,
        ),
        Text(
          name.toString(),
          style: TextStyle(color: cwh),
        ),
      ],
    );
  }
}
