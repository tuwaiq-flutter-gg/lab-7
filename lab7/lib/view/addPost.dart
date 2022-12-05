

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lab7/Data/Data.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  final ImagePicker _picker = ImagePicker();
  XFile? image ;
  String warning = "";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff282626),
        leading: Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle
          ),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios_new , color: Colors.white,)),
        ),
      ),

      body: Container(
        width: MediaQuery.of(context).size.width,
        color: const Color(0xff282626),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Add New Post", style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 24),),
            
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, 
                ),
              onPressed: () async {
              image = await _picker.pickImage(source: ImageSource.gallery);
              setState(() {});
            
            }, child: const Text("Upload your image" , style: TextStyle(color: Colors.black),)),

            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20)
              ),
              child: image == null ? const Text("") : Image.file(File(image!.path) , fit: BoxFit.fill, ) ,
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, 
                ),
                onPressed: () {
              if(image != null) {
                ImageGallary.add(Image.file(File(image!.path) , fit: BoxFit.cover, ));
                Navigator.pop(context);
              } else {
                warning = "there is no Image to add" ;
              }
                setState(() {});
            }, child: const Text("Add to posts", style: TextStyle(color: Colors.black))) ,
            Text(warning , style: const TextStyle(color: Colors.red),)
          ],
        ),
      ),
    );
  }
}