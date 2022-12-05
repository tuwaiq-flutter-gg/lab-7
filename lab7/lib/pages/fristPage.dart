import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab7/component/profile.dart';
import 'package:lab7/component/text.dart';
import 'package:lab7/component/textleft.dart';
import 'package:lab7/pages/secoundPage.dart';

class fristPage extends StatefulWidget {
  const fristPage({super.key});

  @override
  State<fristPage> createState() => _fristPageState();
}

class _fristPageState extends State<fristPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold( backgroundColor: Colors.black,
        body:
            Profile(),
      
    );
  }
}
