import 'dart:io';
import 'package:flutter/material.dart';
import 'package:lab7/components/imagelist.dart';
import 'package:lab7/components/uploadedimages.dart';

class ImagesGrid extends StatefulWidget {
  const ImagesGrid({super.key});

  @override
  State<ImagesGrid> createState() => _ImagesGridState();
}

class _ImagesGridState extends State<ImagesGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 3,
      children: [
        for (int x = 0; x < upImages.length; x++)
          Container(
            child: Image.file(
              File(upImages[x]),
              fit: BoxFit.fill,
            ),
          ),
        for (int i = 0; i < imageList.length; i++)
          Container(
            child: Image.asset(
              imageList[i],
              fit: BoxFit.cover,
            ),
          ),
      ],
    );
  }
}
