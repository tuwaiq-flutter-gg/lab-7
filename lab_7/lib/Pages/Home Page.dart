import 'package:flutter/material.dart';
import 'package:lab_7/Comp/Profile%20Hader.dart';
import 'package:lab_7/Pages/Add%20Images.dart';
import 'package:lab_7/Src/Default%20Images.dart';

import '../Src/Image Library.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color(0xFF282626),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AddImages()));
                    },
                    icon: Icon(Icons.add_circle_outline),
                    iconSize: 35,
                    color: Colors.white,
                    alignment: Alignment.topRight),
              ),
              Container(child: ProfileHeader()),
              SizedBox(
                height: 20,
              ),
              Container(
                  //width: MediaQuery.of(context).size.width / 3,
                  //color: Colors.red,
                  child: Container(
                //alignment: Alignment.topLeft,

                child: Row(
                  children: [
                    Container(
                      // padding: EdgeInsets.only(right: 15),
                      child: Column(
                        children: [
                          Image.asset(
                            "images/1.png",
                            fit: BoxFit.fill,
                          ),
                          Image.asset(
                            "images/2.png",
                            fit: BoxFit.fill,
                          ),
                          Image.asset(
                            "images/3.png",
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "images/4.png",
                          fit: BoxFit.fill,
                        ),
                        Image.asset(
                          "images/5.png",
                          fit: BoxFit.fill,
                        ),
                        Image.asset(
                          "images/6.png",
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "images/7.png",
                          fit: BoxFit.fill,
                        ),
                        Image.asset(
                          "images/8.png",
                          fit: BoxFit.fill,
                        ),
                        Image.asset(
                          "images/9.png",
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ],
                ),
              )),
              // Text("AAAAAAAAAAAAAAAAAAAAAAAAAAAA")
            ],
          )),
    );
  }
}
