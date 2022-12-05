import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextChange extends StatelessWidget {
  const TextChange({super.key, this.title});
final String? title;
  @override
  Widget build(BuildContext context) {
    return 
    Center(
      child: Padding(
        padding: const EdgeInsets.only(left:15.0),
        child: Text(title.toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,)),
      ),
    );
  }
}