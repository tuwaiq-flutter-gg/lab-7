import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
    this.picturePath = "assets/images/profileImage.jpg",
    this.backGroundColor = Colors.grey,
    this.size = 50,
  });

  final String picturePath;
  final double size;
  final Color backGroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: backGroundColor,
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        picturePath,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
