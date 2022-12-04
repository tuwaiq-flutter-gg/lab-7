import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:lab7/components/page1_profile/HomePage.dart';

class AddPicture extends StatefulWidget {
  AddPicture({
    super.key,
  });


  @override
  State<AddPicture> createState() => _AddPictureState();
}

class _AddPictureState extends State<AddPicture> {
  List? imagesList = [];
  File? imageFile;
  ImagePicker? picker = ImagePicker();

  uploadImage() async {
    final pickedFile = await picker!.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF282626),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF282626),
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
                size: 30,
              ))),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Add New Post",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        uploadImage();
                      },
                      child: Text(
                        "Upload Your Image",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                ),
                imageFile == null
                    ? Text("No images Found")
                    : SizedBox(
                        height: 150,
                        width: 250,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(35),
                            child: Image.file(
                              imageFile!,
                              fit: BoxFit.fill,
                            ))),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(160, 40),
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        HomePage(pic: [imageFile]);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                        print(imageFile);
                      });
                    },
                    child: Text(
                      "Post it !",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    )),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
