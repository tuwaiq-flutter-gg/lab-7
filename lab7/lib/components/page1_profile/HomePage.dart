import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lab7/components/page1_profile/ProfileHeader.dart';
import 'package:lab7/components/page1_profile/ProfileText.dart';
import 'package:lab7/components/page2_addPic/AddPicture.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key,
  this.pic});

  List? pic;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF282626),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              ProfileHeader(),
              ProfileText(),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10),
          alignment: Alignment.topCenter,
          height: MediaQuery.of(context).size.height ,
          child: pic == null
              ? Text("No Picture Found", style: TextStyle(color: Colors.white),)
              : GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(pic!.length, (index) {
                    var img = pic![index];
                    return Container(child: Image.file(img));
                  }),
                ),
        )

      ]),
    );
  }
}
