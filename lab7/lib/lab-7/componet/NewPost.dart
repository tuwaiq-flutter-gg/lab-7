
import 'dart:io';


import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lab7/lab-7/componet/HomePage.dart';

class NewPost extends StatefulWidget {
  const NewPost({super.key});
      
  @override
  State<NewPost> createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  final ImagePicker _picker = ImagePicker();
       File? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 51, 50, 50),
      
      body: Container(
       
        child:
       Column(
        children: [
       image == null ? Text("data"):Image.file(File(image!.path)),
       Padding(
         padding: const EdgeInsets.only(top: 200),
         child: Container(
          
           child: Center(
            child: Text(" Add New Post ",
            style: TextStyle(fontSize: 30,fontWeight:
             FontWeight.bold,color: Colors.white),)),
         ),
        
       
         
       ),




 Padding(
   padding: const EdgeInsets.only(top: 120),
   child: Center(
          
              child: IconButton(onPressed: (() async {
               image = (await _picker.pickImage(
                source: ImageSource.gallery)) as File?;
                //هينا اقدر اضيف من الالبوم واذا ابي اصور احط كامير بدال قالري
                setState(() {
                 
              });
            }),
              icon: Icon(Icons.image,size: 80,color: Colors.white,),),
           ),
 ),
 Padding(
   padding: const EdgeInsets.only(top:100 ),
   child: Center(
           //هذا البوتن يرجعني للصفحة الرئيسية 
            child: ElevatedButton(onPressed: (() {
              Navigator.pop(
             context,
             MaterialPageRoute(
                 builder: (context) => HomePage()));
              
             }),
            style:ElevatedButton.styleFrom(minimumSize:
             Size(200,40),backgroundColor: Color.fromARGB(255, 243, 240, 243)), 
            child: Text("Post It!",style: TextStyle(color: Colors.black),)),
          
          ),
 ), 


      ]),
      
      


      ),
  






    );
  }
}