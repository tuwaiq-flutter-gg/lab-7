import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lab7/MyImgs/imgs.dart';

import 'package:lab7/components/twoText.dart';
import 'package:lab7/views/post_it.dart';

class profile extends StatelessWidget {
  profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff282626),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("images/download 1.png"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 40,
                            ),
                            twoText(
                              text1: "80",
                              text2: "Posts",
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            twoText(
                              text1: "707K",
                              text2: "Folowers",
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            twoText(
                              text1: "55",
                              text2: "Following",
                            ),
                          ],
                        )
                      ]),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .05,
                    left: MediaQuery.of(context).size.width * 0.05,
                    bottom: MediaQuery.of(context).size.height * .035,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Web Design Ideas",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Our goal is to get YOU inspire",
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 14,
                          )),
                      Text("All ideas are build from zero",
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 14,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Enjoy our posts by like & ",
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 14,
                          )),
                      Text("comment",
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 14,
                          )),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: GridView.builder(
                        itemCount: ima.myImg.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3, childAspectRatio: 1),
                        itemBuilder: (context, index) {
                          return Container(
                              height: MediaQuery.of(context).size.height * .4,
                              width: MediaQuery.of(context).size.width * .3333,
                              child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.file(File(ima.myImg[index]))));
                        }),
                  ),
                ),
              ],
            ),
            Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PostIt())),
                  child: Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(
                          child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ))),
                )),
          ],
        ),
      ),
    );
  }
}
