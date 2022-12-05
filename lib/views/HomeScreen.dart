import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab7/Components/Posts.dart';
import 'package:lab7/Components/StatCard.dart';
import 'package:lab7/views/uploadImagesScreen.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  final XFile? newImage;

  HomeScreen({super.key, this.newImage});

  static List images = [
    Image.asset(
      "images/pic1.jpg",
      fit: BoxFit.fill,
    ),
    Image.asset(
      "images/pic2.jpg",
      fit: BoxFit.fill,
    ),
    Image.asset(
      "images/pic3.jpg",
      fit: BoxFit.fill,
    ),
    Image.asset(
      "images/pic4.jpg",
      fit: BoxFit.fill,
    ),
    Image.asset(
      "images/pic5.jpg",
      fit: BoxFit.fill,
    ),
    Image.asset(
      "images/pic6.jpg",
      fit: BoxFit.fill,
    ),
    Image.asset(
      "images/pic1.jpg",
      fit: BoxFit.fill,
    ),
    Image.asset(
      "images/pic2.jpg",
      fit: BoxFit.fill,
    ),
    Image.asset(
      "images/pic3.jpg",
      fit: BoxFit.fill,
    ),
    Image.asset(
      "images/pic4.jpg",
      fit: BoxFit.fill,
    ),
    Image.asset(
      "images/pic5.jpg",
      fit: BoxFit.fill,
    ),
    Image.asset(
      "images/pic6.jpg",
      fit: BoxFit.fill,
    ),
  ];

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get newImage => null;

  // @override
  // void initState() {
  //   HomeScreen.images.add(Image.file(File(newImage!.path)));
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff282626),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                icon: Image.asset(
                  "images/Vectoradd.jpg",
                  height: 30,
                  width: 30,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => uploadImages()));
                },
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Image.asset(
                    "images/download 1Avatar .jpg",
                    width: 132,
                    height: 127,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.15,
                ),
                StatCard(
                  title: "Posts",
                  number: "80",
                ),
                SizedBox(
                  width: 20,
                ),
                StatCard(
                  title: "Followers",
                  number: "707K",
                ),
                SizedBox(
                  width: 20,
                ),
                StatCard(
                  title: "Following",
                  number: "55",
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 40),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Web Design Ideas",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffffffff)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Our goal is to get YOU inspire \n" +
                            "All ideas are build from zero",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color(0xffffffff)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Enjoy our posts by like & \ncomment",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color(0xffffffff)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Posts(
              images: HomeScreen.images,
            ),
          ],
        ));
  }
}
