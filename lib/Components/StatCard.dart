import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StatCard extends StatelessWidget {
  const StatCard({super.key, this.title, this.number});
  final String? title;
  final String? number;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number.toString(),
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xffffffff)),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          title.toString(),
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Color(0xffffffff)),
        ),
      ],
    );
  }
}
