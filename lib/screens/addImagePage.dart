import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lab7/screens/homePage.dart';

class AddImagePage extends StatefulWidget {
  const AddImagePage({super.key, required this.images});
  final List<XFile?> images;
  @override
  State<AddImagePage> createState() => _AddImagePageState();
}

class _AddImagePageState extends State<AddImagePage> {
  final ImagePicker _picker = ImagePicker();
  XFile? tempImage;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () async {
          tempImage = await _picker.pickImage(source: ImageSource.gallery);

          setState(() {});
        },
        child: const Icon(
          Icons.add_circle_outline_rounded,
          color: Colors.white,
          size: 100,
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xFF282626),
        elevation: 0,
        title: const Text(
          "Add New Post",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(16),
        height: screenHeight,
        width: screenWidth,
        color: const Color(0xFF282626),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            tempImage == null
                ? const Icon(
                    Icons.image_not_supported,
                    size: 100,
                    color: Colors.white,
                  )
                : Image.file(
                    File(tempImage!.path),
                  ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(screenWidth, 40),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              onPressed: tempImage == null
                  ? null
                  : () {
                      images.add(tempImage);
                      Navigator.pop(context);
                    },
              child: const Text(
                "Post it!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
