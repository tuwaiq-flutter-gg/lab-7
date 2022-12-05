import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../Src/Image Library.dart';

class AddImages extends StatefulWidget {
  const AddImages({super.key});

  @override
  State<AddImages> createState() => _AddImagesState();
}

class _AddImagesState extends State<AddImages> {
  final ImagePicker _picker = ImagePicker();

  XFile? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          margin: EdgeInsets.only(left: 10),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 35,
            ),
          ),
        ),
      ),
      body: Container(
        color: Color(0xFF282626),
        child: ListView(children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "Add New Post",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: Text(
                  "Upload your image",
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF282626),
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () async {
                  image = await _picker.pickImage(source: ImageSource.gallery);
                  setState(() {});
                },
              ),
            ),
          ),
          image == null ? Text("") : Image.file(File(image!.path)),
          Container(
            alignment: Alignment.centerLeft,
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: Text(
                  "Post It",
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF282626),
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
