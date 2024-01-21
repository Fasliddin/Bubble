import 'package:bottom_navbar_with_indicator/bottom_navbar_with_indicator.dart';
import 'package:bubble/data/colors.dart';
import 'package:bubble/data/variables.dart';
// import 'package:bubble/data/variables.dart';
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
        child: CustomLineIndicatorBottomNavbar(
          splashColor: searchBarColor,
          selectedColor: bubbleColor,
          unselectedFontSize: 12,
          selectedFontSize: 14,
          unselectedIconSize: 18,
          selectedIconSize: 20,
          unSelectedColor: Colors.white,
          backgroundColor: searchBarColor,
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          enableLineIndicator: true,
          lineIndicatorWidth: 2,
          indicatorType: IndicatorType.top,
          customBottomBarItems: [
            CustomBottomBarItems(
              label: 'Home',
              icon: Icons.home_rounded,
            ),
            CustomBottomBarItems(
              label: 'Friends',
              icon: Icons.group_rounded,
            ),
            CustomBottomBarItems(
              label: 'Messages',
              icon: Icons.message,
            ),
            CustomBottomBarItems(
              label: 'Settings',
              icon: Icons.settings_rounded,
            ),
          ],
        ),
      ),
    );
  }
}
