import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key, required this.ButtonName, this.OnPressed});
  final String ButtonName;
  final OnPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 180,
      child: ElevatedButton(
        onPressed: OnPressed,
        child: Text(
          ButtonName,
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
