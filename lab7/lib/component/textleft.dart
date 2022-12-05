import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Textleft extends StatelessWidget {
  const Textleft({super.key, this.title});
final String? title;
  @override
  Widget build(BuildContext context) {
    return Container(width: MediaQuery.of(context).size.width/2,
      child: Align(alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left:15.0,top: 10),
          child: Text(title.toString(),style: TextStyle(color: Colors.white,)),
        ),
      ),
    );;
  }
}