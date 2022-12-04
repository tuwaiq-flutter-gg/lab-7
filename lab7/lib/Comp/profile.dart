import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab7/Comp/profiledetails.dart';
import 'package:lab7/main.dart';
import 'package:lab7/pages/Upload.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "images/profile.png",
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.topRight,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => upload(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.add_circle_outline,
                        color: cwh,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  detail(
                    name: 'Posts',
                    number: '80',
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  detail(
                    name: 'Followers',
                    number: '707K',
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  detail(
                    name: 'Following',
                    number: '55',
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
