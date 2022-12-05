import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lab7/All/List/ListOf.dart';

import '../../Component/Bio.dart';
import '../../Component/PFF.dart';
import 'Post.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({
    super.key,
  });

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF282626),
      appBar: AppBar(
        backgroundColor: Color(0xFF282626),
        elevation: 0,
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Post(),
                )),
            child: Image.asset("images/add.png"),
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF282626),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 100,
                child: FittedBox(child: Image.asset("images/avatar.png")),
              ),
              SizedBox(
                width: 5,
              ),
              PFF(
                Number: "80",
                Title: "Posts",
              ),
              PFF(
                Number: "707K",
                Title: "Followers",
              ),
              PFF(
                Number: "55",
                Title: "Following",
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width * 0.90,
              child: Bio(),
            ),
          ),
         
          Expanded(
            child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: ListOfPic.length,
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemBuilder: (context, index) =>
                    Image.file(File(ListOfPic[index].path), fit: BoxFit.fill)),
                    
          )
          
        ],
      ),
    );
  }
}
