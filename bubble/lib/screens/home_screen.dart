import 'package:bubble/components/add_account.dart';
import 'package:bubble/components/icons.dart';
import 'package:bubble/data/colors.dart';
import 'package:bubble/data/functions.dart';
import 'package:bubble/data/variables.dart';
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
      appBar: AppBar(
        titleSpacing: 10,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
               HomeAccountTempleteList.reversed;
              });
            },
            icon: Icon(
              Icons.add_rounded,
              color: Colors.white.withOpacity(0.80),
              weight: 10,
            ),
          )
        ],
        toolbarHeight: 60,
        backgroundColor: background,
        title: SizedBox(
          width: size.width - 60,
          height: 38,
          child: SearchBar(
            // controller: searchController,
            onSubmitted: (value) {
              setState(() {
                print(value);
                datasadd();
              });
            },
            textStyle: const MaterialStatePropertyAll(
              TextStyle(
                color: Colors.white,
              ),
            ),
            hintText: "Search",
            leading: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
              child: search(),
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: BottomNavigationBar(
            backgroundColor: bottomNavigationColor,
            type: BottomNavigationBarType.shifting,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedIconTheme:const IconThemeData(
              color: bubbleColor,
            ),
            selectedLabelStyle:const TextStyle(
              color: Color.fromRGBO(82, 186, 140, 1),
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelStyle:
                const TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            unselectedIconTheme:const IconThemeData(
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
