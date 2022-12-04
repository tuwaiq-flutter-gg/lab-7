import 'package:flutter/material.dart';
import 'package:lab7/Data/Data.dart';
import 'package:lab7/main.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class upload extends StatefulWidget {
  upload({super.key});

  @override
  State<upload> createState() => _uploadState();
}

class _uploadState extends State<upload> {
  final ImagePicker _picker = ImagePicker();

  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cbl,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: cbl,
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
      body: ListView(children: [
        SizedBox(
          height: 50,
        ),
        Center(
          child: Text(
            "Add New Post",
            style: TextStyle(
                fontSize: 25, color: cwh, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: cwh),
              child: Text(
                "Upload your image",
                style: TextStyle(
                    fontSize: 25, color: cbl, fontWeight: FontWeight.bold),
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
              style: ElevatedButton.styleFrom(backgroundColor: cwh),
              child: Text(
                "Post It",
                style: TextStyle(
                    fontSize: 25, color: cbl, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                setState(() {
                  data.add(image!.path);
                });
              },
            ),
          ),
        ),
      ]),
    );
  }
}
