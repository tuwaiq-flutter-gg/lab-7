import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab7/Components/CustomButton.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lab7/views/HomeScreen.dart';

class uploadImages extends StatefulWidget {
  const uploadImages({super.key});

  @override
  State<uploadImages> createState() => _uploadImagesState();
}

class _uploadImagesState extends State<uploadImages> {
  final ImagePicker _picker = ImagePicker();
  XFile? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff282626),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Add New Post",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xffffffff),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: customButton(
                  title: "Upload your image",
                  height: 40,
                  width: 188,
                  fontsize: 16,
                  onPressed: () async {
                    image =
                        (await _picker.pickImage(source: ImageSource.gallery))!;
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              height: 191,
              width: 274,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(35),
              ),
              child: image == null
                  ? Center(child: Text("You didn't upload any image yet"))
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Image.file(
                        File(image!.path),
                        fit: BoxFit.fill,
                      ),
                    ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          customButton(
            title: "Post It !",
            height: 40,
            width: 168,
            fontsize: 24,
            onPressed: () {
              // ignore: curly_braces_in_flow_control_structures
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeScreen(
                            newImage: image,
                          )));
            },
          ),
        ],
      ),
    );
  }
}
