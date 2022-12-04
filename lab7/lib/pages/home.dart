import 'package:flutter/material.dart';
import 'package:lab7/main.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cbl,
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          margin: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(children: [
                    Image.asset("images/profile.png"),
                  ]),
                  Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                          ),
                        ],
                      ),
                      Row(
                        children: [Text("data")],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Web Design Ideas",
                textAlign: TextAlign.left,
              )
            ],
          ),
        ),
      ),
    );
  }
}
