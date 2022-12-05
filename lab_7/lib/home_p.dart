import 'package:flutter/material.dart';

import 'package:lab_7/imges.dart';

class HomeScren extends StatelessWidget {
  const HomeScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF000000),
      body: ListView(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Container(
                  width: 132,
                  height: 129,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: SizedBox(
                      width: 132,
                      height: 129,
                      child: ClipOval(
                        child: Image.asset(
                          "imags/myimag.jpg",
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Posts  ",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFFFFFFFF)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text("20",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFFFFFFFF))),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Following  ",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFFFFFFFF))),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text("199",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFFFFFFFF))),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Followers  ",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFFFFFFFF))),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text("8000",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFFFFFFFF))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 65),
              child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => imges(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.add_circle_outline_outlined,
                        size: 35,
                        color: Colors.white,
                      ))),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Web Design Ideas",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFFFFFFFF))),
              Text("Our goal is to get YOU inspire",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFFFFFFFF))),
              Text("All ideas are build from zero",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFFFFFFFF))),
              Text("Enjoy our posts by like & ",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFFFFFFFF))),
              Text("comment",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFFFFFFFF))),
            ],
          ),
        ),
        // GridView.count(
        //   crossAxisCount: 3,
        //   children: [
           
            
        //   ],
        // )
      ]),
    );
  }
}
