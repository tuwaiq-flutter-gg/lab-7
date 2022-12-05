import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab51/pages/secpage.dart';
import 'package:lab51/pages/third.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "~ Hi, Norlanda!",
                style: TextStyle(color: Color(0xff283B51), fontSize: 20),
              ),
              CircleAvatar(
                backgroundColor: Color(0xffE5E5E5),
                child: Image.asset(
                  "images/gallery.png",
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(22),
            child: Container(
              height: MediaQuery.of(context).size.height / 3.8,
              width: MediaQuery.of(context).size.height + 4 / 3,
              padding: EdgeInsets.all(22),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffDCE8F5)),
              child: Center(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                            alignment: Alignment.topCenter,
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(19),
                                  child: Text(
                                    "Main account",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 183, 195, 210),
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    r' $154.723.00 ',
                                    style: TextStyle(
                                        color: Color(0xff283B51), fontSize: 30),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(12),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xff283B51)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              height: (MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      3.8) /
                                                  4,
                                              width: 90,
                                              child: Row(
                                                children: [
                                                  InkWell(
                                                    child: Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 10),
                                                        child: Text(
                                                          "Topup",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 15),
                                                        )),
                                                    onTap: (() {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      Mysec()));
                                                    }),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30,
                                              width: 30,
                                              child: Container(
                                                  color: Color(0xff283B51),
                                                  child: Container(
                                                    padding: EdgeInsets.only(
                                                        right: 10),
                                                    child: Image.asset(
                                                        "images/receive-square-2.png",
                                                        fit: BoxFit.cover,
                                                        color:
                                                            Color(0xffD0DAE6)),
                                                  )),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 48),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Color(0xffF5F7FA)),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: (MediaQuery.of(context)
                                                            .size
                                                            .height /
                                                        3.8) /
                                                    4,
                                                width: 90,
                                                child: Row(
                                                  children: [
                                                    Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 10),
                                                        child: InkWell(
                                                          child: Text(
                                                            "Withdrow",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff283B51),
                                                                fontSize: 15),
                                                          ),
                                                          onTap: () {
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            Stst()));
                                                          },
                                                        )),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 30,
                                                width: 30,
                                                child: Container(
                                                    color: Color(0xffF5F7FA),
                                                    child: Container(
                                                      padding: EdgeInsets.only(
                                                          right: 9),
                                                      child: Image.asset(
                                                        "images/send-sqaure-2.png",
                                                        fit: BoxFit.fill,
                                                      ),
                                                    )),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 63),
                child: Text(
                  "Recent Activity",
                  style: TextStyle(
                      color: Color(0xff283B51),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "SeeAll",
                style: TextStyle(
                  color: Color(0xff446388),
                  fontSize: 15,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 10,
              width: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffF5F7FA)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                          color: Color(0xffF5F7FA)),
                      height: 60,
                      width: 60,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffF5F7FA)),
                          child: SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                "images/gallery.png",
                                fit: BoxFit.cover,
                              ))),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              "Figma",
                              style: TextStyle(
                                  color: Color(0xff283B51),
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "12 August 2022",
                              style: TextStyle(
                                color: Color(0xffA3B8D1),
                                fontSize: 12,
                              ),
                            )),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      r' $20.1 ',
                      style: TextStyle(
                          color: Color(0xff283B51),
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 10,
              width: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffF5F7FA)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                          color: Color(0xffF5F7FA)),
                      height: 60,
                      width: 60,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffF5F7FA)),
                          child: SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                "images/gallery.png",
                                fit: BoxFit.cover,
                              ))),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              "Netflix",
                              style: TextStyle(
                                  color: Color(0xff283B51),
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "7 August 2022",
                              style: TextStyle(
                                color: Color(0xffA3B8D1),
                                fontSize: 12,
                              ),
                            )),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      r' $14.1 ',
                      style: TextStyle(
                          color: Color(0xff283B51),
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 140, 10),
            child: Text("Recent Send Money",
                style: TextStyle(
                    color: Color(0xff283B51),
                    fontSize: 19,
                    fontWeight: FontWeight.bold)),
          ),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF5F7FA)),
              height: 100,
              width: 330,
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 10, 1),
                        child: CircleAvatar(
                          backgroundColor: Color(0xffDCE8F5),
                          child: Image.asset(
                            "images/gallery.png",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 1, 10, 10),
                        child: Text("Agus"),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 10, 1),
                        child: CircleAvatar(
                          backgroundColor: Color(0xffFBE7D0),
                          child: Image.asset(
                            "images/gallery.png",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 1, 10, 10),
                        child: Text("Siti"),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 10, 1),
                        child: CircleAvatar(
                          backgroundColor: Color(0xffD6E3FC),
                          child: Image.asset(
                            "images/gallery.png",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 1, 10, 10),
                        child: Text("Ubin"),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 10, 1),
                        child: CircleAvatar(
                          backgroundColor: Color(0xffDEC6FC),
                          child: Image.asset(
                            "images/gallery.png",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 1, 10, 10),
                        child: Text("Tina"),
                      )
                    ],
                  )
                ],
              ))
        ],
      )),
    );
  }
}
