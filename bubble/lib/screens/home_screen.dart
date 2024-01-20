import 'package:bubble/data/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background.withOpacity(0.50),
      appBar: AppBar(
        backgroundColor: background,
      ),
    );
  }
}
