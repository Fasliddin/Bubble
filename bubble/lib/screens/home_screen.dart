import 'package:bubble/components/bottom_navigation.dart';
import 'package:bubble/components/icons.dart';
import 'package:bubble/components/number_picker.dart';
import 'package:bubble/data/colors.dart';
// import 'package:bubble/data/functions.dart';
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
              showDragHandle: false,
              backgroundColor: background,
              builder: (context) => Number_Picker()
            );
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
                datas.sort();
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
            controller: searchController,
            onSubmitted: (value) {
              setState(() {
                print(value);
                // datasadd();
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
      bottomNavigationBar: const BottomNavigation(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (context, index) => GestureDetector(
            onLongPress: () {
              setState(() {
                datas.removeAt(index);
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: bubbleColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        datas[index],
                        textAlign:
                            index % 2 == 0 ? TextAlign.left : TextAlign.right,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "${DateTime.now().month.toString() + "/" + DateTime.now().day.toString() + "/" + DateTime.now().year.toString()}" +
                            "/" +
                            DateTime.now().second.toString(),
                        textAlign:
                            index % 2 != 0 ? TextAlign.left : TextAlign.right,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
