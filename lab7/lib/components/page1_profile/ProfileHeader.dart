import 'package:flutter/material.dart';
import 'package:lab7/components/page2_addPic/AddPicture.dart';

class ProfileHeader extends StatelessWidget {
   ProfileHeader({
    super.key,
    this.num,
    this.title
  });
  String? title;
  String? num;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 50,
            child: CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage("images/learn-hero.png"),
            ),
          ),
            Titles(title: "Posts",num: "80",),
            
              Titles(title: "Followers",num: "707K",),
              Titles(title: "Followering",num: "55",),
          
        ],
      ),
      Positioned(
          top: 0,
          left: 305,
          child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddPicture()),
                );
              },
              icon: Icon(
                Icons.add_circle_outline,
                color: Colors.white,
                size: 35,
              )))
    ]);
  }
}

class Titles extends StatelessWidget {
   Titles({super.key,
   this.num,
    this.title});


   String? title;
  String? num;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
                    children: [
                      Text(
                        num.toString(),
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        title.toString(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
    );
  }
}