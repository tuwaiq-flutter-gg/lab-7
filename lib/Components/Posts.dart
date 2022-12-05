import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  const Posts({super.key, required this.images});
  final List images;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.6,
      child: GridView.builder(
          itemCount: images.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: ((context, index) {
            return Container(height: 138, width: 144, child: images[index]);
          })),
    );
  }
}
