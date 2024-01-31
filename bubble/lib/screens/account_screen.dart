import 'dart:math';

import 'package:bubble/data/colors.dart';
import 'package:bubble/data/functions.dart';
import 'package:bubble/data/variables.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key});
  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.more_horiz_rounded,
                  size: 30,
                  color: Colors.white,
                )),
          ),
        ],
        leadingWidth: 25,
        leading: Center(
          child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.chevron_left_rounded,
                size: 35,
              )),
        ),
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: bubbleColor),
        backgroundColor: background,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: bubbleColor,
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: bottomNavigationColor,
                    backgroundImage:
                        AssetImage(HomeAccountTempleteList[accountIndex].image),
                  ),
                ),
              ),
              Text(
                HomeAccountTempleteList[accountIndex].username,
                style: usernameStyle,
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: datas.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(4.0),
              child: GestureDetector(
                onLongPress: () {
                showDialog(
                  context: context,
                  builder: (context) => SimpleDialog(
                    backgroundColor: background,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    children: [
                      ListTile(
                        title: Text("Tahrirlash"),
                        leading: Icon(Icons.edit_rounded),
                      ),
                      ListTile(
                        title: Text("Tahrirlash"),
                        leading: Icon(Icons.edit_rounded),
                      ),
                      ListTile(
                        title: Text("Tahrirlash"),
                        leading: Icon(Icons.edit_rounded),
                      ),
                      ListTile(
                        title: Text("Tahrirlash"),
                        leading: Icon(Icons.edit_rounded),
                      ),
                    ],
                  ),
                );
              },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomRight: index % 2 == 0?Radius.circular(25):Radius.circular(5),
                      bottomLeft: index % 2 == 0?Radius.circular(5):Radius.circular(25),
                      topLeft:index % 2 == 0?Radius.circular(0):Radius.circular(5),
                      topRight: index % 2 == 0?Radius.circular(5):Radius.circular(0),
                    ),
                  ),
                  elevation: 0,
                  color: index % 2 == 0
                      ? bubbleColor
                      : bottomNavigationColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      child: Text(
                        datas[index],
                        textAlign:
                            index % 2 == 0 ? TextAlign.left : TextAlign.right,
                        style: usernameStyle,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: size.width,
        height: 60,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SearchBar(
            controller: searchController,
            onSubmitted: (value) {
              setState(() {
                adding();
              });
            },
            trailing: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mic_none_rounded,
                  color: bubbleColor,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    adding();
                  });
                },
                icon: const Icon(
                  Icons.send_rounded,
                  color: bubbleColor,
                ),
              ),
            ],
            hintText: "Type a message",
            hintStyle: const MaterialStatePropertyAll(TextStyle(
              color: Colors.grey,
              fontStyle: FontStyle.italic,
            )),
            backgroundColor: const MaterialStatePropertyAll(
              bottomNavigationColor,
            ),
            leading: Transform.rotate(
              angle: 180 / pi,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.attach_file_rounded,
                  color: bubbleColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
