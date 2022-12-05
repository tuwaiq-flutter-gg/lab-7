// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:lab7/components/About.dart';
import 'package:lab7/src/data/data.dart';
import 'package:lab7/src/screens/AddPost.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromRGBO(255, 255, 255, 0),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(15, 20, 8, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 6,
                    width: MediaQuery.of(context).size.width / 3.3,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 201, 196, 196),
                    ),
                    child: Image.asset("images/avatar-icon.png"),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 7,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              iconSize: MediaQuery.of(context).size.height / 22,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        AddPost(),
                                  ),
                                ).then((context) => setState(() {}));
                              },
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(),
                              icon: Icon(
                                Icons.add_circle_outline,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  "80",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                const Text("Posts"),
                              ],
                            ),
                            Column(
                              children: [
                                const Text(
                                  "707k",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                const Text("Followers"),
                              ],
                            ),
                            Column(
                              children: [
                                const Text(
                                  "55",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                const Text("following"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            About(),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: posts.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) => Image.file(
                File(posts[index].path),
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
