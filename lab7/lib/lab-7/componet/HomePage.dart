

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab7/lab-7/componet/NewPost.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(155, 57, 57, 57),
      body: Container( 
        child: 
         Column(
          
          children: [
             SizedBox(height: 50,),
          Container(
            
            padding: EdgeInsets.all(10),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 ClipRRect(child:Image.asset("images/image1.png",
                 height: 100,width: 100,),borderRadius:
                  BorderRadius.circular(100), ), 
                   Row(
                         children: [
                           IconButton(
                             onPressed: () {
                                Navigator.push(
             context,
             MaterialPageRoute(
                 builder: (context) => NewPost()));
                             },
                             icon: Icon(Icons.add),color: Colors.white,
                           ),
                         ],
                       ),
            
               
  //             Container (child:FittedBox
  //              (child: Image.asset("images/image1.png",),
  //              fit: BoxFit.fill,
  //              ) ,
  //             height: 70,width: 70,
  // decoration: BoxDecoration(
  //   borderRadius: BorderRadius.circular(100),
    
  //     ),
  //      ),
                Column(children: [
                  Text("80",style: TextStyle(color: Colors.white),),
                   Text("Posts",style: TextStyle(color: Colors.white)),

                ],),
                Column(children: [
                  Text("707K",style: TextStyle(color: Colors.white)),
                   Text("Followers",style: TextStyle(color: Colors.white)),

                ],),
                Column(children: [
                  Text("55",style: TextStyle(color: Colors.white)),
                   Text("Following",style: TextStyle(color: Colors.white)),

                ],)

            ],
            ),
          ),
           SizedBox(height: 15,),

          Container(padding: EdgeInsets.only(left: 10),
            alignment: Alignment.centerLeft,
            child:
                Column( 
                  //حطيته ابي اعرف التغير 
                  
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                  Text("Web Design Ideas",style:
                   TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white ),),
                  Text("Our goal is to get YOU inspire",style:
                   TextStyle(fontSize: 15,fontWeight:
                    FontWeight.normal,color:Colors.white),),
                  Text("All ideas are build from zero",style: 
                  TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color:Colors.white),),
                  Text("Enjoy our posts by like &",style:
                   TextStyle(fontSize: 15,fontWeight:
                   FontWeight.normal,color:Colors.white),),
                  Text("by like & comment",style: TextStyle(fontSize: 15,fontWeight:FontWeight.normal,color:Colors.white)),



                ])
                ,
                ),
                
                     Expanded(child:
                      GridView.count(
                        crossAxisCount: 3,
                       mainAxisSpacing: 0,
                        crossAxisSpacing: 0,
                        
                        children: [
                      
                             
                            Image.asset("images/image2.png",height: 180,width:MediaQuery.of(context).size.width/3),
                             Image.asset("images/image3.png",height: 180,width: MediaQuery.of(context).size.width/3),
                             Image.asset("images/image2.png",height: 180,width: MediaQuery.of(context).size.width/3),
                             Image.asset("images/image3.png",height: 180,width: MediaQuery.of(context).size.width/3),
                             Image.asset("images/image2.png",height: 180,width: MediaQuery.of(context).size.width/3),
                           Image.asset("images/image3.png",height: 180,width: MediaQuery.of(context).size.width/3),
                           Image.asset("images/image2.png",height: 180,width: MediaQuery.of(context).size.width/3),
                           Image.asset("images/image3.png",height: 180,width: MediaQuery.of(context).size.width/3),
                           Image.asset("images/image2.png",height: 180,width: MediaQuery.of(context).size.width/3),
                             Image.asset("images/image3.png",height: 180,width: MediaQuery.of(context).size.width/3),
                             Image.asset("images/image2.png",height: 180,width: MediaQuery.of(context).size.width/3),
                             Image.asset("images/image3.png",height: 180,width: MediaQuery.of(context).size.width/3),
                
                           ],
                          
                        
                      
                         )
                       ),
         ],
         ),
         ),

    );
  }
}