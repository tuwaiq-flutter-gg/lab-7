import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PFF extends StatelessWidget {
  const PFF({super.key,  this.Number,  this.Title});
  final String? Number;
  final String? Title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          Number!,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          Title!,
          style: TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
