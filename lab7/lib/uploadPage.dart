import 'package:flutter/material.dart';
import 'package:lab7/HomeScreen.dart';
import 'package:lab7/components/imagelist.dart';
import 'package:lab7/components/uploadedimages.dart';
import 'package:lab7/main.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Upload extends StatefulWidget {
  Upload({super.key});

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  final ImagePicker _picker = ImagePicker();

  static XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        backgroundColor: bgcolor,
        elevation: 0,
      ),
      body: ListView(children: [
        SizedBox(
          height: 50,
        ),
        Center(
          child: Text(
            "Add New Post",
            style: TextStyle(
                fontSize: 25, color: bcolors, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: bcolors),
              child: Text(
                "Upload your image",
                style: TextStyle(
                    fontSize: 15, color: bgcolor, fontWeight: FontWeight.bold),
              ),
              onPressed: () async {
                image = await _picker.pickImage(source: ImageSource.gallery);
                setState(() {});
              },
            ),
          ),
        ),
        image == null
            ? Text("")
            : Container(
                height: 300,
                width: 300,
                child: Image.file(File(image!.path)),
              ),
        Container(
          alignment: Alignment.centerLeft,
          child: Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: bcolors),
              child: Text(
                "Post It!",
                style: TextStyle(
                    fontSize: 15, color: bgcolor, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                setState(() {
                  upImages.add(image!.path);
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HomeScreen()),
                      (Route<dynamic> route) => route is HomeScreen);
                });
              },
            ),
          ),
        ),
      ]),
    );
  }
}
