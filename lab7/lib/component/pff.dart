import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Pff extends StatelessWidget {
  Pff({super.key, this.count, this.name});
  String? count;
  String? name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              count!,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            SizedBox(
              height: 10,
            ),
            Text(name!, style: TextStyle(color: Colors.white, fontSize: 15))
          ],
        ),
      ],
    );
  }
}
