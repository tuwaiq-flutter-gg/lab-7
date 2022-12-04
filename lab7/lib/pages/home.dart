import 'package:flutter/material.dart';
import 'package:lab7/Comp/images.dart';
import 'package:lab7/Comp/info.dart';
import 'package:lab7/Comp/profile.dart';
import 'package:lab7/Data/Data.dart';
import 'package:lab7/main.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: cbl,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            profile(),
            info(),
            imageslist(),
          ],
        ));
  }
}

// Row(
//                         children: [
//
//                         ],
//                       ),

// Padding(
//         padding: const EdgeInsets.all(8),
//         child: Container(
//           margin: EdgeInsets.only(top: 50),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Column(
//                     children: [
//
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       Row(
//                         children: [
//                           IconButton(
//                             onPressed: () {},
//                             icon: Icon(Icons.add),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Column(
//                             children: [
//                               Text("80"),
//                               Text("data"),
//                             ],
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Container(
//                 child: Text(
//                   "Web Design Ideas",
//                   textAlign: TextAlign.left,
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
