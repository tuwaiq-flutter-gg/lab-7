import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class info extends StatelessWidget {
  final number;
  final Type;
  const info({super.key, required this.number, required this.Type});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(number,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        SizedBox(
          height: 10,
        ),
        Text(Type, style: TextStyle(color: Colors.white))
      ],
    );
  }
}
