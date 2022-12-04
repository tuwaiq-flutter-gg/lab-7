import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab7/main.dart';

class info extends StatelessWidget {
  const info({super.key});

  @override
  Widget build(BuildContext context) {
    return (Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textAlign: TextAlign.left,
                    "Web Design Ideas",
                    style: TextStyle(
                        color: cwh, fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    textAlign: TextAlign.left,
                    "Our goal is to get YOU inspire\nAll ideas are build from zero",
                    style: TextStyle(color: cwh),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    textAlign: TextAlign.left,
                    "Enjoy our posts by like &\ncomment",
                    style: TextStyle(color: cwh),
                  ),
                ],
              ),
            ));
  }
}
