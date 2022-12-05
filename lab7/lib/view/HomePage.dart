

import 'package:flutter/material.dart';
import 'package:lab7/components/GallaryBuilder.dart';
import 'package:lab7/view/addPost.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          color: const Color(0xff282626),
          child: ListView(
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    // profile photo
                    Image.asset(
                      "images/download 1.png" , 
                      height: MediaQuery.of(context).size.width * 0.25,
                      width: MediaQuery.of(context).size.width * 0.25,
                    ),

                    // profile info
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => AddPost()));
                          },
                          child: Image.asset("images/material-symbols_add-circle-outline-rounded.png")),
                        
                        SizedBox(height: 10,),

                        // followers numbers
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: const [
                                Text("80" , style: TextStyle(color: Colors.white),),
                                Text("Posts", style: TextStyle(color: Colors.white),)
                              ],
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: const [
                                Text("707K", style: TextStyle(color: Colors.white),),
                                Text("Followers", style: TextStyle(color: Colors.white),)
                              ],
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: const [
                                Text("55", style: TextStyle(color: Colors.white),),
                                Text("Following", style: TextStyle(color: Colors.white),)
                              ],
                            ),
                            
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 30,),

              // baio
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Web Design Ideas", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.white),),
                  SizedBox(height: 10,),
                  Text("Our goal is to get YOU inspire", style: TextStyle(color: Colors.white),),
                  Text("All ideas are build from zero", style: TextStyle(color: Colors.white),),
                  SizedBox(height: 10,),
                  Text("Enjoy our posts by like & comment", style: TextStyle(color: Colors.white),),
                ],
              ),
            
              GallaryBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}