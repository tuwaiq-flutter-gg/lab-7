// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:lab7/components/proflieImage.dart';
// import 'package:lab7/screens/addImagePage.dart';

// class ProfileMainCard extends StatefulWidget {
//   const ProfileMainCard({super.key, required this.images});
//   final List<XFile?> images;
//   @override
//   State<ProfileMainCard> createState() => _ProfileMainCardState();
// }

// class _ProfileMainCardState extends State<ProfileMainCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16),
//       child: Row(
//         children: [
//           Expanded(
//             child: Container(
//               margin: const EdgeInsets.only(right: 60),
//               child: const ProfileImage(
//                 size: 130,
//                 backGroundColor: Color(0Xffffffff),
//               ),
//             ),
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               InkWell(
//                 onTap: () {
//                   setState(() {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: ((context) => AddImagePage(
//                                   images: widget.images,
//                                 ))));
//                   });
//                 },
//                 child: const Icon(
//                   Icons.add_circle_outline_rounded,
//                   color: Colors.white,
//                   size: 40,
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.only(top: 30),
//                 child: Expanded(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         children: const [
//                           Text(
//                             "80",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w800),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             "Posts",
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         width: 20,
//                       ),
//                       Column(
//                         children: const [
//                           Text(
//                             "707K",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w800),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             "Followers",
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         width: 20,
//                       ),
//                       Column(
//                         children: const [
//                           Text(
//                             "55",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w800),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             "Following",
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
