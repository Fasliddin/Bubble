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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        titleSpacing: 10,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_circle_outline_rounded,
              size: 25,
              color: Colors.white,
            ),
          ),
        ],
        toolbarHeight: 50,
        backgroundColor: background,
        title: SizedBox(
          width: size.width - 60,
          height: 38,
          child: SearchBar(
            leading: const Icon(Icons.search),
            side: MaterialStatePropertyAll(
              BorderSide(
                color: searchBarColor.withOpacity(0.80),
              ),
            ),
            elevation: const MaterialStatePropertyAll(0),
            backgroundColor: const MaterialStatePropertyAll(
              searchBarColor,
            ),
          ),
        ),
      ),
    );
  }
}
