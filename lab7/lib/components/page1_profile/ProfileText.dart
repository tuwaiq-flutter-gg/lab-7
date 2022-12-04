
import 'package:flutter/material.dart';

class ProfileText extends StatelessWidget {
  const ProfileText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40),
      child: Row(
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "Web Design Ideas\n\n",
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    "Our goal is to get YOU inspire\nAll ideas are build from zero",
                style: TextStyle(fontSize: 14)),
            TextSpan(
                text: "\n\nEnjoy our posts by like & comment",
                style: TextStyle(fontSize: 14)),
          ]))
        ],
      ),
    );
  }
}
