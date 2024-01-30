import 'package:bubble/components/add_account.dart';
import 'package:bubble/data/colors.dart';
import 'package:bubble/data/variables.dart';
import 'package:bubble/screens/messages_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listOfAppbarIcons.add(
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.add_rounded,
          color: Colors.white.withOpacity(0.80),
          weight: 10,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            showModalBottomSheet(
                context: context,
                useRootNavigator: true,
                constraints: const BoxConstraints.expand(),
                showDragHandle: false,
                backgroundColor: background,
                builder: (context) => const AddAccount());
          });
        },
        backgroundColor: bubbleColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            50,
          ),
        ),
        child: const Icon(
          Icons.add_rounded,
          color: Colors.white,
          weight: 10,
        ),
      ),
      appBar:appBar,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: BottomNavigationBar(
            backgroundColor: bottomNavigationColor,
            type: BottomNavigationBarType.shifting,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedIconTheme: const IconThemeData(
              color: bubbleColor,
            ),
            selectedLabelStyle: const TextStyle(
              color: Color.fromRGBO(82, 186, 140, 1),
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelStyle: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400),
            unselectedIconTheme: const IconThemeData(
              color: Colors.white,
            ),
            currentIndex: selectedIndex,
            onTap: (value) {
              setState(
                () {
                  selectedIndex = value;
                  print(selectedIndex);
                },
              );
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded),
                label: "Home",
                backgroundColor: bottomNavigationColor,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.group_rounded),
                label: "Friends",
                backgroundColor: bottomNavigationColor,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message_rounded),
                label: "Messages",
                backgroundColor: bottomNavigationColor,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings_rounded),
                label: "Settings",
                backgroundColor: bottomNavigationColor,
              ),
            ],
          ),
        ),
      ),
      body: listOfScreens.elementAt(selectedIndex),
    );
  }
}
