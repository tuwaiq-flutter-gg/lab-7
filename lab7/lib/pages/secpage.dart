import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Mysec extends StatelessWidget {
  const Mysec({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xffE5E5E5),
       
        body:Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
      children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Container(
                      child: CircleAvatar(
                        backgroundColor: Color(0xffDCE8F5),
                        child: Image.asset(
                          "images/arrow-left.png",
                        ),
                      ),
                    ),
                  onTap: () {
                    

                      Navigator.pop(context);
                  },),
                  InkWell(
                    child: CircleAvatar(
                      backgroundColor: Color(0xffDCE8F5),
                      child: Image.asset(
                        "images/more-horizontal.png",
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: [
                      Text("Sende to",
                          style: TextStyle(
                            color: Color(0xff446388),
                            fontSize: 15,
                          )),
                      Text("Agus Samsudin",
                          style: TextStyle(
                              color: Color(0xff446388),
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Text(
                    r' $213.55. ',
                    style: TextStyle(color: Color(0xff283B51), fontSize: 30),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffDCE8F5)),
                    height: 30,
                    width: 40,
                    child: Center(child: Text("USD")),
                  ),
                ),
              ),
              TextField(
                textAlign: TextAlign.start,
                cursorWidth: 300,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Add note',
                  hintStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  fillColor: Color(0xffDCE8F5),
                  contentPadding: EdgeInsets.all(16),
                ),
              ),
      ],
    ),
            ),
        
        Row(children: [
Container(child: Column(children: [



  
],),)





        ],)
        
        
        
        
        
        
          ],
        ));
  }
}
