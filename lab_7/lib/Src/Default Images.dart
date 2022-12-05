import 'package:flutter/material.dart';
import 'package:lab_7/Src/Image%20Library.dart';

class DefaultImages extends StatelessWidget {
  const DefaultImages({super.key});

  @override
  Widget build(BuildContext context) {
    return (Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        children: [
          for (int i = 0; i < Library.length; i++)
            Container(
              child: Image.asset(
                Library[i],
                fit: BoxFit.fill,
              ),
            ),
        ],
      ),
    ));
  }
}
