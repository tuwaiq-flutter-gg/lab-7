import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class twoText extends StatelessWidget {
  String? text2, text1;
  twoText({super.key, this.text1, this.text2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text1.toString(),
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xffFFFFFF))),
        SizedBox(
          height: 18,
        ),
        Text(text2.toString(),
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 14,
            ))
      ],
    );
  }
}
