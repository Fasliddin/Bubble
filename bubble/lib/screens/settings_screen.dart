import 'dart:ui';

import 'package:bubble/data/colors.dart';
import 'package:bubble/data/variables.dart';
import 'package:bubble/screens/about_page.dart';
import 'package:bubble/screens/acces_code_delete_page.dart';
import 'package:bubble/screens/access_code_page.dart';
import 'package:bubble/screens/chat_settings_page.dart';
import 'package:bubble/screens/safety_page.dart';
import 'package:bubble/screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: background,
        centerTitle: true,
        toolbarHeight: 160,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(
                  () {
                    if (Username == "Username") {
                      print(Username);
                    } else {
                      usernameChangeController.text = Username.toString();
                    }
                    showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          50,
                        ),
                      ),
                      builder: (context) => SafeArea(
                        child: Padding(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: Container(
                            width: size.width,
                            decoration: const BoxDecoration(
                              color: background,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    "Foydalanuvchi malumotlarini o'zgartirish",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextField(
                                    controller: usernameChangeController,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                    decoration: const InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.blueGrey,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            10,
                                          ),
                                        ),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.blueGrey,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            10,
                                          ),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            10,
                                          ),
                                        ),
                                        borderSide: BorderSide(
                                          color: bubbleColor,
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            10,
                                          ),
                                        ),
                                      ),
                                      hintText: "Ismni o'zgartirish",
                                      hintStyle: TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    height: 70,
                                    child: ListView.builder(
                                      itemCount: images.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) =>
                                          GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            imageUser = images[index];
                                          });
                                        },
                                        child: CircleAvatar(
                                          radius: 40,
                                          backgroundImage: AssetImage(
                                            images[index],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      backgroundColor:
                                          const MaterialStatePropertyAll(
                                        bubbleColor,
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (usernameChangeController
                                            .text.isNotEmpty) {
                                          Username =
                                              usernameChangeController.text;
                                          usernameChangeController.clear();
                                        }
                                        Navigator.pop(context);
                                      });
                                    },
                                    child: SizedBox(
                                      width: size.width,
                                      height: 50,
                                      child: const Center(
                                        child: Text(
                                          "O'zgarishlarni saqlash",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          ),
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
                  },
                );
              },
              child: CircleAvatar(
                radius: 42,
                backgroundColor: bubbleColor,
                child: CircleAvatar(
                  backgroundColor: background,
                  radius: 40,
                  backgroundImage: AssetImage(
                    imageUser,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                Username.toString(),
                textAlign: TextAlign.center,
                style: settingsUserStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 5,
              ),
              child: Text(
                Email.toString(),
                textAlign: TextAlign.center,
                style: settingsEmailStyle,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              onTap: () {
                setState(() {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => ChatSettings(),
                    ),
                  );
                });
              },
              leading: Icon(
                Icons.message_rounded,
                size: 25,
                color: bubbleColor,
              ),
              title: Text(
                "Chat sozlamalari",
                style: settingsListStyle,
              ),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  if (onOrOff == false) {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => SafetyPage(),
                      ),
                    );
                  } else if (onOrOff == true && checkPassword == false) {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => AcessCodePage(),
                      ),
                    );
                  } else {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => AcessCodePageRemover(),
                      ),
                    );
                  }
                });
              },
              leading: Icon(
                Icons.lock_rounded,
                size: 25,
                color: bubbleColor,
              ),
              title: Text(
                "Xavfsizlik",
                style: settingsListStyle,
              ),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  sliderValue = 16.0;
                  print(sliderValue);
                });
              },
              leading: Icon(
                Icons.download_rounded,
                size: 25,
                color: bubbleColor,
              ),
              title: Text(
                "Yuklanmalar",
                style: settingsListStyle,
              ),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  showDialog(
                    context: context,
                    builder: (context) => AboutPage(),
                  );
                });
              },
              leading: Icon(
                Icons.info_outline_rounded,
                size: 25,
                color: bubbleColor,
              ),
              title: Text(
                "Ilova haqida",
                style: settingsListStyle,
              ),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Splash(),
                      ),
                      (route) => false);
                });
              },
              leading: Icon(
                Icons.logout_rounded,
                size: 25,
                color: bubbleColor,
              ),
              title: Text(
                "Chiqish",
                style: settingsListStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
