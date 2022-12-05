import 'dart:io';

import 'package:flutter/material.dart';


class Secondpage extends StatefulWidget {
  const Secondpage({super.key});

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          margin: EdgeInsets.only(left: 10),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 35,
            ),
          ),
        ),
      ),
      body: Container(
        color: Color(0xFF282626),
        child: ListView(children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "Add New Post",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: Text(
                  "Upload your image",
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF282626),
                      fontWeight: FontWeight.bold),
                ),
                onPressed: ()  {
                  
                  setState(() {});
                },
              ),
            ),
          ),
         
          Container(
            alignment: Alignment.centerLeft,
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: Text(
                  "Post It",
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF282626),
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ]),
      ),
    );
  }
}