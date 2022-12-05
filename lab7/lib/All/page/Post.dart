import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lab7/All/List/ListOf.dart';

import '../../Component/Buttons.dart';

class Post extends StatefulWidget {
  Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  final ImagePicker _picker = ImagePicker();
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF282626),
        appBar: AppBar(
          backgroundColor: Color(0xFF282626),
          elevation: 0,
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 40,
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
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Buttons(
                  ButtonName: "Upload your image",
                  OnPressed: () async {
                    image =
                        await _picker.pickImage(source: ImageSource.gallery);
                    setState(() {});
                  },
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 200, maxWidth: 300),
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Color(0xFF282626)),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.amber),
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: image == null
                        ? Center(
                            child: Text(
                            "Choose photo",
                            style: TextStyle(fontSize: 20),
                          ))
                        : Image.file(File(image!.path)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Buttons(
                ButtonName: "Post It !",
                OnPressed: () {
                  setState(() {
                    image == null
                        ? showDialog(
                            context: context,
                            builder: ((context) => AlertDialog(
                                  insetPadding: EdgeInsets.zero,
                                  content: Text(
                                    "You did not choose any image",
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.red,
                                    ),
                                  ),
                                )))
                        : ListOfPic.add(image!);
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "UserProfile");

 
                  });
                },
              ),
            ),
          ],
        ));
  }
}
