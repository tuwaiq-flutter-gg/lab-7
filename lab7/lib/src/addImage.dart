import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lab7/src/homePage.dart';

class AddImage extends StatefulWidget {
  static const String addImage = "screenTwo";
  XFile? image;

  AddImage({super.key, this.image});
  @override
  State<AddImage> createState() => _AddImageState(image);
}

class _AddImageState extends State<AddImage> {
  final ImagePicker _picker = ImagePicker();
  XFile? image;

  _AddImageState(XFile? image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 190),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 30,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 60),
              child: Text(
                "Add new post",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: image == null
                  ? Text(
                      "There is no image",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    )
                  : Image.file(
                      File(image!.path),
                      width: 300,
                      height: 300,
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 60),
              child: ElevatedButton(
                  onPressed: () async {
                    {
                      image =
                          await _picker.pickImage(source: ImageSource.gallery);
                      setState(() {});
                    }
                    ;
                  },
                  child: Text("Upload your image")),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55),
              child:
                  ElevatedButton(onPressed: (() {}), child: Text("Save image")),
            )
          ],
        )));
  }
}
