import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Stst extends StatefulWidget {
  const Stst({super.key});

  @override
  State<Stst> createState() => _StstState();
}

class _StstState extends State<Stst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xffE5E5E5),

body:  Padding(
  padding: const EdgeInsets.only(top: 30),
  child:   Column(
  
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
  
      
  
      
  
      
  
      Center(child: Text("Statistics",style: TextStyle(
  
                        color: Color(0xff283B51),
  
                        fontSize: 20,
  
                        fontWeight: FontWeight.bold),))
  
      
  
      
  
      
  
                  ,InkWell(
  
      
  
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
  
    Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Image.asset("images/Group 238806.png",),
    ),


    Row(children: [
Padding(
  padding: const EdgeInsets.fromLTRB(35, 30, 55, 5),
  child:   Container(
  
    height: 200,
  
                width: 150,
  
                padding: EdgeInsets.all(22),
  
                decoration: BoxDecoration(
  
                    borderRadius: BorderRadius.circular(25),
  
                    color: Color(0xffDCE8F5)),
  
    
  
    
  
    child: Column(children: [
Center(child: Image.asset("images/receive-square-2.png"),)

,Padding(
  padding: const EdgeInsets.fromLTRB(0, 10, 0,0 ),
  child:   Text("Income"),
)

,Padding(
  padding: const EdgeInsets.only(bottom: 10),
  child:   TextField(),
)


  ,Text(r'$25.245',style: TextStyle(
                          color: Color(0xff283B51),
                          fontSize: 19,
                          fontWeight: FontWeight.bold),)  ],),),
),Padding(
  padding: const EdgeInsets.fromLTRB(0, 30, 10, 0),
  child:   Container(
  
    height: 200,
  
                width: 150,
  
                padding: EdgeInsets.all(22),
  
                decoration: BoxDecoration(
  
                    borderRadius: BorderRadius.circular(25),
  
                    color: Color(0xffDCE8F5)),
  
    
  
    
  
    child: Column(children: [
Center(child: Image.asset("images/receive-square-2.png"),)

,Padding(
  padding: const EdgeInsets.fromLTRB(0, 10, 0,0 ),
  child:   Text("Expenditure"),
)

,Padding(
  padding: const EdgeInsets.only(bottom: 5),
  child:   TextField(),
)


  ,Text(r'$47.51',style: TextStyle(
                          color: Color(0xff283B51),
                          fontSize: 19,
                          fontWeight: FontWeight.bold),)  ],),),
)










    ],)
  
    
  


    
  
    
  
    
  
    ]
  ,
  
  ),
),


      
    );
  }
}