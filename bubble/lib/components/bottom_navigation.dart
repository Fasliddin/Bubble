import 'package:bubble/data/colors.dart';
import 'package:bubble/data/variables.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: BottomNavigationBar(
          backgroundColor: bottomNavigationColor,
          type: BottomNavigationBarType.shifting,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedIconTheme: IconThemeData(
            color: bubbleColor,
          ),
          selectedLabelStyle: TextStyle(
            color:  Color.fromRGBO(82, 186, 140, 1),
            fontWeight: FontWeight.w500,
          ),
          unselectedLabelStyle:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          unselectedIconTheme: IconThemeData(
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
    );
  }
}
