import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Instagram"),
            Icon(Icons.add),
            Icon(Icons.favorite),
            Icon(Icons.share)

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),

          BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),

          BottomNavigationBarItem(icon: Icon(Icons.video_call),label: "video call"),

          BottomNavigationBarItem(icon: Icon(Icons.shop),label: "shop"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "home",)
        ]
      ,),
    );
  }
}