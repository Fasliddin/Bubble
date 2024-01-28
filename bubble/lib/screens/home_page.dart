import 'package:bubble/data/colors.dart';
import 'package:bubble/data/variables.dart';
import 'package:bubble/screens/account_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: HomeAccountTempleteList.length,
          itemBuilder: (context, index) => Builder(builder: (context) {
            return GestureDetector(
              onLongPress: () {
                showDialog(
                  context: context,
                  builder: (context) => SimpleDialog(
                    title: const Text("Clear accounts"),
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            HomeAccountTempleteList.removeAt(index);
                            Navigator.pop(context);
                          });
                        },
                        child: const Text("Clear"),
                      ),
                    ],
                  ),
                );
              },
              child: ListTile(
                selected: true,
                onTap: () {
                  accountIndex = index;
                  setState(() {
                    HomeAccountTempleteList[index].messageNumber = 0;
                  });
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const AccountPage(),
                    ),
                  );
                },
                title: Text(
                  HomeAccountTempleteList[index].username,
                  style: usernameStyle,
                ),
                subtitle: Text(
                 HomeAccountTempleteList[index].message,
                  style: messageStyle,
                  softWrap: false,
                ),
                leading: CircleAvatar(
                  backgroundColor: bubbleColor,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: bubbleColor,
                      backgroundImage:
                          AssetImage(HomeAccountTempleteList[index].image),
                    ),
                  ),
                ),
                isThreeLine: false,
                trailing: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        HomeAccountTempleteList[index].clock.toString(),
                        style: clockStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Visibility(
                      visible: HomeAccountTempleteList[index].messageNumber > 0
                          ? true
                          : false,
                      child: CircleAvatar(
                        radius: 9,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: bubbleColor,
                          child: Center(
                            child: Text(
                              HomeAccountTempleteList[index]
                                  .messageNumber
                                  .toString(),
                              style: messageNumberStyle,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
