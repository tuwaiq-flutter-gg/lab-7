

import 'package:flutter/material.dart';
import 'package:lab7/Data/Data.dart';

class GallaryBuilder extends StatefulWidget {
  const GallaryBuilder({super.key});

  

  @override
  State<GallaryBuilder> createState() => _GallaryBuilderState();
}

class _GallaryBuilderState extends State<GallaryBuilder> {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.60,
      width: MediaQuery.of(context).size.width ,
      child: GridView.builder(
        itemCount: ImageGallary.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ), 
        itemBuilder: ((context, index) {
          return SizedBox(
            height: 150,
            width: 150,
            child: ImageGallary[index],
          );
        }),
        
        ),
    );
  }
}