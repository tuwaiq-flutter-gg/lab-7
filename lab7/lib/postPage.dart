import 'dart:ffi';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';

class postPage extends StatefulWidget {
  const postPage({super.key});

  @override
  State<postPage> createState() => _postPageState();
}

class _postPageState extends State<postPage> {
  final ImagePicker _picker = ImagePicker();
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff282626),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(children: [
        SizedBox(
          height: 103,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "Add new post",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.only(right: 300),
          child: Center(
            child: ElevatedButton(
              onPressed: () async {
                image = await _picker.pickImage(source: ImageSource.gallery);
                setState(() {});
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: Text("Upload your Image",
                  style: TextStyle(color: Colors.black)),
            ),
          ),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: image == null
                ? const Text(
                    "no image",
                    style: TextStyle(color: Colors.white),
                  )
                : Image.file(
                    File(image!.path),
                    fit: BoxFit.fill,
                  ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.only(right: 200),
          child: Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: Text("Post It !", style: TextStyle(color: Colors.black)),
            ),
          ),
        )
      ]),
    );
  }
}
