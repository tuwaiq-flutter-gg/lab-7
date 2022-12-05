import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:lab7/views/profile.dart';
import 'package:lab7/MyImgs/imgs.dart';

class PostIt extends StatefulWidget {
  List<String>? images = [];

  PostIt({super.key, this.images});

  @override
  State<PostIt> createState() => _PostItState();
}

class _PostItState extends State<PostIt> {
  final ImagePicker _picker = ImagePicker();
  // Pick an image

  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff282626),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => profile())),
                child: Container(
                    padding: EdgeInsets.only(
                        top: 10,
                        left: 10,
                        bottom: MediaQuery.of(context).size.height * .09),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 30,
                    )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text("Add New Post",
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .1,
                  ),
                  Container(
                      padding: EdgeInsets.only(
                          left: 10,
                          bottom: MediaQuery.of(context).size.height * .04),
                      child: ElevatedButton(
                        onPressed: () async {
                          image = await _picker.pickImage(
                              source: ImageSource.gallery);

                          setState(() {
                            print(widget.images);
                            print(image!.path);

                            print(ima.myImg);
                          });
                        },
                        child: Text(
                          "Upload your image",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white),
                      )),
                  image == null
                      ? Text(
                          "",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        )
                      : Center(
                          child: Container(
                              height: MediaQuery.of(context).size.width * .5,
                              width: MediaQuery.of(context).size.width * .5,
                              child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.file(File(image!.path)))),
                        ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                        padding: EdgeInsets.only(
                            left: 10,
                            top: MediaQuery.of(context).size.height * .05),
                        child: ElevatedButton(
                          onPressed: () {
                            ima.myImg = <dynamic>[image!.path] + ima.myImg;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => profile()));
                          },
                          child: Text(
                            "Post It !",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
