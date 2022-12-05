import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Bio extends StatelessWidget {
  const Bio({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Web Design Ideas",
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Our goal is to get YOU inspire",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
        Text(
          "All ideas are build from zero",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Enjoy our posts by like &",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
        Text(
          "comment",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
