import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class stories extends StatefulWidget {
   stories({super.key, required this.name});
   String name;
  

  @override
  State<stories> createState() => _storiesState();
}

class _storiesState extends State<stories> {
 
  @override
  Widget build(BuildContext context) {
   
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 201, 196, 196),
            ),
          ),
          //Text(name)
        ],
      ),
    );
  }
}
