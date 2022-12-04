import 'package:flutter/material.dart';
import 'package:lab7/Data/Data.dart';

class imageslist extends StatelessWidget {
  const imageslist({super.key});

  @override
  Widget build(BuildContext context) {
    return (Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        children: [
          for (int i = 0; i < data.length; i++)
            Container(
              child: Image.asset(
                data[i],
                fit: BoxFit.cover,
              ),
            ),
        ],
      ),
    ));
  }
}
