import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Myaccount extends StatefulWidget {
  const Myaccount({super.key});

  @override
  State<Myaccount> createState() => _MyaccountState();
}

class _MyaccountState extends State<Myaccount> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: ListView(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 201, 196, 196),
                        ),
                      ),
                      Column(
                        children: [const Text("4007"), const Text("Posts")],
                      ),
                      Column(
                        children: [const Text("512"), const Text("Followers")],
                      ),
                      Column(
                        children: [const Text("47"), const Text("following")],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Ruba"),
                            const Text("CS"),
                            const Text("Flutter")
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        child: Container(
                          margin: const EdgeInsets.only(left: 30, right: 5),
                          height: 40,
                          width: MediaQuery.of(context).size.width - 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 201, 196, 196),
                          ),
                          child: const Center(child: Text("Edit Profile")),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          height: 40,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 201, 196, 196),
                          ),
                          child: const Icon(Icons.person_add_outlined),
                        ),
                      ),
                    ],
                  ),
                  const TabBar(tabs: [
                    Tab(
                      icon: Icon(Icons.grid_3x3_outlined, color: Colors.black),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.person_pin_outlined,
                        color: Colors.black,
                      ),
                    )
                  ])
                ],
              ),
            ),
            Container(child: Text("")),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            //type: BottomNavigationBarType.fixed,
            items: [
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Color.fromARGB(255, 48, 48, 48),
                  ),
                  label: "Home"),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search_sharp,
                    color: Color.fromARGB(255, 48, 48, 48),
                  ),
                  label: "search"),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.video_camera_front,
                    color: Color.fromARGB(255, 48, 48, 48),
                  ),
                  label: "reels"),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    color: Color.fromARGB(255, 48, 48, 48),
                  ),
                  label: "store"),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle_outlined,
                    color: Color.fromARGB(255, 48, 48, 48),
                  ),
                  label: "account"),
            ]),
      ),
    );
  }
}
