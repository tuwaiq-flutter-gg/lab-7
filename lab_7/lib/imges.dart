import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lab_7/home_p.dart';
import 'package:path_provider/path_provider.dart';

class imges extends StatefulWidget {
  const imges({super.key});

  @override
  State<imges> createState() => _imgesState();
}

class _imgesState extends State<imges> {
  final ImagePicker _picker = ImagePicker();
final ButtonStyle style1 = ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 242, 242, 242));
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF000000),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: IconButton(  
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_sharp,color: Colors.white,)),
            ),
            
          ),
          Center(child: Text("Add New Post",style: TextStyle(color: Color.fromARGB(255, 250, 249, 249),fontSize: 27,fontWeight: FontWeight.w500),)),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 40,left: 20),
              child: Container(
                width: 150,
                height: 30,
                child: ElevatedButton(style: style1,
                    onPressed: () async {
                      image = await _picker.pickImage(source: ImageSource.gallery);
                      setState(() {});
                    },
                    child: Text("Add image",style: TextStyle(color: Colors.black,fontSize: 17))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width / 4,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: image == null ? Text("Select Image") : Image.file(File(image!.path)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              child: Center(
                child: ElevatedButton(style: style1,
                    onPressed: () async {
                      setState(() {});
                    },
                    child: Text("Posts Add",style: TextStyle(color: Colors.black,fontSize: 17),)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
