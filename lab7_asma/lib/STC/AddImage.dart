import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lab7_asma/STC/profile.dart';

class AddImage extends StatefulWidget {
  const AddImage({super.key});

  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
   final ImagePicker _picker = ImagePicker();
  XFile? image;
  
  

  uploadImage() async {
    final XFile? imageF = await _picker.pickImage(source: ImageSource.gallery);

    image == null ? Text("No Images") : Image.file(File(image!.path));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 41, 38, 38),
      appBar: AppBar(),
      body: ListView(children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Add New Post", style: TextStyle(color: Colors.white)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  uploadImage;
                },
                child: Text(
                  "Upload your image",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.white)),
                child: Image.file(
                  imageF!,
                  fit: BoxFit.fill,
                ),
                // child: Image.XFile(image),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    ProFile(
                      image: [imageF!],
                    );
                  });
                },
                child: Text(
                  "Post It!",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ]),
      ]),
    );
  }
}
