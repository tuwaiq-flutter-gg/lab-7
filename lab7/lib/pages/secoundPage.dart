import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lab7/imagesList.dart';
import 'package:lab7/pages/fristPage.dart';

class SecoundPage extends StatefulWidget {
  const SecoundPage({super.key});

  @override
  State<SecoundPage> createState() => _SecoundPageState();
}

class _SecoundPageState extends State<SecoundPage> {
    final ImagePicker imagePicker=ImagePicker();
    File? image;
    List? imageslist =[];
uploadimage()async{
  var pickedImage= await imagePicker.getImage(source: ImageSource.camera);
  if(pickedImage!=null){
    setState(() {
      image=File(pickedImage.path);
    });
  }
  else{}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
     
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 25,),
          Align(alignment: Alignment.topLeft,
            child: Container(
              child: IconButton(icon: Icon(Icons.arrow_back_ios,),color: Colors.white, onPressed: () { 
                Navigator.pop(context);
               },), 
                
            ),
          ),
          SizedBox(height: 30,),
          Container(alignment: Alignment.center,
                    child: 
                      Text(
                        "Add New Post",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)), 
                   ),

            Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: Container(alignment: Alignment.centerLeft,
                child: ElevatedButton(onPressed:uploadimage, 
                child: Text("Upload your image",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),),
              ),
            ),
            SizedBox(height: 20,),
             image==null?Text("not upload image"):Image.file(image!,height: 200,width: 200,fit: BoxFit.fill,alignment: Alignment.center,),
             
             SizedBox(height: 20,),
             Center(
               child: Container(alignment: Alignment.center,
                child: ElevatedButton(onPressed:(){
                if(image != null) {
                imageslist!.add(Image.file(File(image!.path), ));
                Navigator.pop(context);
              } else {
              }
                }, child: Text("Post It !",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                 style: ElevatedButton.styleFrom(backgroundColor: Colors.white),),
            ),
             )

          
        ],
          ),
      );
  }
}