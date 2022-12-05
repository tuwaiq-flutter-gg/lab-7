import 'package:flutter/material.dart';
import 'package:lab7/components/imagelist.dart';

class igimages extends StatelessWidget {
  const igimages({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        children: [
          for (int i = 0; i < imageList.length; i++)
            Container(
              child: Image.asset(
                imageList[i],
                fit: BoxFit.fill,
              ),
            ),
        ],
      ),
    );
  }
}