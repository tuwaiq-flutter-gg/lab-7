import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:lab7/component/pff.dart';
import 'package:lab7/src/addImage.dart';

class HomePage extends StatefulWidget {
  static const String home = "home";

  HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 300),
            child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, AddImage.addImage);
                },
                icon: Icon(
                  Icons.add_circle_outline_sharp,
                  color: Colors.white,
                  size: 35,
                )),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: CircleAvatar(
                  radius: 50,
                  child: Image.asset("images/download 1.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 50),
                child: Pff(
                  count: "3",
                  name: "Posts",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 50),
                child: Pff(
                  count: "1M",
                  name: "Followers",
                ),
              ),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 50),
                  child: Pff(
                    count: "0",
                    name: "Following",
                  ),
                ),
              ]),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20),
            child: Text("Web Design Ideas",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: Text(
                "Our goal is to get YOU inspire \n All ideas are build from zero",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: Text("Enjoy our posts by like &\n comment",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                )),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Expanded(child: Image.asset("images/0_kvxAFXrgOxIwvSbO 1.png")),
              Expanded(
                child: Image.asset(
                    "images/pgbl_815f19822798ec5_62636600-1595507239 1.png"),
              ),
              Expanded(
                child: Image.asset(
                    "images/Web-Design-Creativity-Online-Sources-of-Innovative-Ideas 1.png"),
              )
            ],
          ),
          Row(
            children: [
              // Expanded(child: Image.asset("$image")),
            ],
          ),
        ],
      )),
    );
  }
}
