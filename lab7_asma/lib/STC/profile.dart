import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab7_asma/STC/AddImage.dart';

class ProFile extends StatefulWidget {
  const ProFile({super.key, required this.image});
  final List? image;
  @override
  State<ProFile> createState() => _ProFileState();
}

class _ProFileState extends State<ProFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 40, 38, 38),
        actions: [
          IconButton(
            icon: Icon(Icons.place),
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AddImage(),))},
          )
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.image,
                size: 50,
              ),
              Column(
                children: [
                  Text("80", style: TextStyle(color: Colors.white)),
                  Text("Post", style: TextStyle(color: Colors.white))
                ],
              ),
              Column(
                children: [
                  Text("707K", style: TextStyle(color: Colors.white)),
                  Text("Followers", style: TextStyle(color: Colors.white))
                ],
              ),
              Column(
                children: [
                  Text("55", style: TextStyle(color: Colors.white)),
                  Text("Following", style: TextStyle(color: Colors.white))
                ],
              )
            ],
          ),
          Text(
            "Web Design Ideas",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
              "Our goal is to get YOU inspireAll \n all ideas are build from zero \n Enjoy our posts by like & \n commen"),
          Container(
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.topCenter,
              height: MediaQuery.of(context).size.height,
              child: image == null? Text( "No Picture Found",
                      style: TextStyle(color: Colors.white), )
                    : GridView.count(
                      crossAxisCount: 3,
                      children: List.generate(image!.length, (index) {
                        var img = image![index];
                        return Container(child: Image.file(img));
                      }),
                    ))
        ],
      )),
    );
  }
}
