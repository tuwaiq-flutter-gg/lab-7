import 'package:flutter/material.dart';
import 'package:lab7/component/text.dart';
import 'package:lab7/component/textleft.dart';
import 'package:lab7/imagesList.dart';
import 'package:lab7/pages/secoundPage.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return         Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25,),
          Align(alignment: Alignment.topRight,
           child: Container(
            child: IconButton(icon: Icon(Icons.add_circle_outline),color: Colors.white, onPressed: () { 
              Navigator.push( context,MaterialPageRoute(builder: (context) => SecoundPage()));
             },),
             ),
      
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Image.asset("images/download 1.png",scale:1,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextChange(title: "80"),
                        TextChange(title: "707K"),
                        TextChange(title: "55"),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         TextChange(title:"posts"),
                         TextChange(title:"Followers"),
                         TextChange(title:"Following"),
                      ],
                    ),              
                  ],
                ),
                ),
            ],
          ),
          SizedBox(height: 15,),
          Textleft(title:"Web Design Ideas"),
          Textleft(title:"Our goal is to get YOU inspire All ideas are build from zero"),
          Textleft(title:"Enjoy our posts by like & comment"), 
         Container(height: MediaQuery.of(context).size.height/2,
          
            child: GridView.count(   
                        crossAxisCount: 3,
                        //padding: const EdgeInsets.all(5),
                       children: 
                       imageslist,

                       ),
            // child: 
                       
         )
          
    
        ]);
  }
}