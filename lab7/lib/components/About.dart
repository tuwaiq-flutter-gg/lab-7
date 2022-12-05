// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Row(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 6,
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Web Design Ideas",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Text(
                    "Our goal is to get YOU inspire All ideas are build from zero"),
                const Text("Enjoy our posts by like & comment")
              ],
            ),
          )
        ],
      ),
    );
  }
}
