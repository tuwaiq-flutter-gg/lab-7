import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          // height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
          child: Expanded(
        child: Column(
          children: [
            Container(
              // color: Colors.red,
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "images/Profile.png",
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text(
                          "80",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Post",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text("707K",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Followers",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text("55",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Following",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              // color: Colors.blue,
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Web Design Ideas",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Our goal is to get YOU inspire",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      )),
                  Text("All ideas are build from zero",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Enjoy our posts by like & comment",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ))
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
