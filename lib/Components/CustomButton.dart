import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class customButton extends StatelessWidget {
  const customButton(
      {super.key,
      required this.title,
      this.height,
      this.width,
      this.fontsize,
      this.onPressed});
  final String title;
  final double? height;
  final double? width;
  final double? fontsize;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: height,
        width: width,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffffffff),
          ),
          child: Text(
            title.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: fontsize,
              fontWeight: FontWeight.bold,
              color: Color(0xff000000),
            ),
          ),
        ),
      ),
    );
  }
}
