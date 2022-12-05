import 'package:flutter/material.dart';
import 'package:lab7/components/profilebar.dart';
import 'package:lab7/main.dart';
import 'package:lab7/uploadPage.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/profile.png'),
            radius: 60,
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
                            builder: (context) => Upload(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.add_circle_outline,
                        color: bcolors,
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
                  ProfileBar(
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
                  ProfileBar(
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
                  ProfileBar(
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
