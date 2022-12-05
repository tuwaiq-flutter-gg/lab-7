import 'package:flutter/material.dart';

import 'package:lab7/components/igimages.dart';
import 'package:lab7/components/text.dart';

import 'Secondpage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: Column(

        children: [
          Padding(
            
            padding: const EdgeInsets.only(left: 300) ,
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Secondpage()));
             
                },
                icon: Icon(
                  Icons.add_circle_outline_sharp,
                  color: Colors.white,
                  size: 35,
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: const EdgeInsets.only(top: 33, left: 15),
                  width: 132,
                  height: 127,
                  decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
              const SizedBox(
                width: 47,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Column(
                        children: [
                          text(
                            count: "3",
                            name: "Posts",
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Column(
                        children: [
                          text(
                            count: "20m",
                            name: "Followers",
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Column(
                        children: [
                          text(
                            count: "30",
                            name: "Following",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40, left: 20),
                child: Text("Web Design Ideas",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 20),
                child: Text(
                    "Our goal is to get YOU inspired \n All our ideas are built from zero",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    )),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 20),
                child: Text("support our posts by likes &\n comments",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const igimages(),
        ],
      ),
    );
  }
}
