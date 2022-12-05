import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab7/components/info.dart';
import 'package:lab7/postPage.dart';

class accountPage extends StatelessWidget {
  const accountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff282626),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: const Icon(Icons.add_circle_outline_outlined),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => postPage()));
            },
          ),
        ),
      ),
      body: ListView(children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                              "images/logo.jpg",
                            ),
                            fit: BoxFit.fill)),
                  ),
                  Spacer(),
                  info(number: "2,294", Type: "Posts"),
                  Spacer(),
                  info(number: "494K", Type: "Folowers"),
                  Spacer(),
                  info(number: "3", Type: "Folowing"),
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Floward|فلاورد",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("تطبيق فلاورد توصيل ورد وهدايا اونلاين",
                          style: TextStyle(color: Colors.white)),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Online folral gifting|Same-day delivery",
                          style: TextStyle(color: Colors.white)),
                    ]),
              )
            ],
          ),
        ),
        GridView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          children: [
            Image.network("images/post1.jpg"),
            Image.network("images/post2.jpg"),
            Image.network("images/post3.jpg"),
            Image.network("images/post4.jpg"),
            Image.network("images/post5.jpg"),
            Image.network("images/post6.jpg"),
            Image.network("images/post7.jpg"),
            Image.network("images/post8.jpg"),
            Image.network("images/post9.jpg"),
            Image.network("images/post10.jpg"),
            Image.network("images/post11.jpg"),
            Image.network("images/post12.jpg"),
          ],
        )
      ]),
    );
  }
}
