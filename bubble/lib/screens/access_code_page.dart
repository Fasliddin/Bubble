import 'package:bubble/data/colors.dart';
import 'package:bubble/screens/home_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class acessCodePage extends StatefulWidget {
  const acessCodePage({super.key});

  @override
  State<acessCodePage> createState() => _acessCodePageState();
}

class _acessCodePageState extends State<acessCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        iconTheme: IconThemeData(
          size: 35,
          color: bubbleColor,
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                CupertinoPageRoute(
                  builder: (context) => Home(),
                ),
                (route) => false);
          },
          icon: Icon(Icons.chevron_left_rounded),
        ),
        backgroundColor: background,
      ),
    );
  }
}
