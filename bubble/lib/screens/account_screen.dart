import 'package:bubble/data/colors.dart';
import 'package:bubble/data/variables.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => AccountScreepage();
}

class AccountScreepage extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      extendBody: true,
      appBar: AppBar(
        toolbarHeight: 40,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Friends",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              letterSpacing: 2,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: HomeAccountTempleteList.length,
          itemBuilder: (context, index) => GestureDetector(
            onLongPress: () {
              setState(() {
                datas.removeAt(index);
              });
            },
            child: ListTile(
              title: Text(
                HomeAccountTempleteList[index].username,
                style: usernameStyle,
              ),
              subtitle: Text(
                HomeAccountTempleteList[index].message,
                style: messageStyle,
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
                  CircleAvatar(
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
