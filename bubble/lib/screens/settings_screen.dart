import 'package:bubble/data/colors.dart';
import 'package:bubble/data/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
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
                    showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          50,
                        ),
                      ),
                      builder: (context) => Container(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "Save changes",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextField(
                                controller: usernameChangeController,
                                decoration: const InputDecoration(
                                  hintText: "Username",
                                  hintStyle: TextStyle(
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  border: OutlineInputBorder(),
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
                                      borderRadius: BorderRadius.circular(10),
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
                                      Username = usernameChangeController.text;
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
                                      "Save changes",
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              width: size.width,
              height: 30,
              color: bottomNavigationColor,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Notifications",
                  style: TextStyle(
                    color: bubbleColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.notifications_rounded,
              size: 25,
              color: bubbleColor,
            ),
            title: Text(
              "Allow Notifications",
              style: settingsListStyle,
            ),
            trailing: SizedBox(
              width: 42,
              height: 30,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Switch(
                  activeColor: bubbleColor,
                  trackOutlineColor: MaterialStatePropertyAll(
                    Colors.transparent,
                  ),
                  activeTrackColor: bottomNavigationColor,
                  inactiveThumbColor: bubbleColor,
                  inactiveTrackColor: bottomNavigationColor,
                  trackOutlineWidth: MaterialStatePropertyAll(2),
                  onChanged: (value) {
                    setState(() {
                      notifications = value;
                    });
                  },
                  value: notifications,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              width: size.width,
              height: 30,
              color: bottomNavigationColor,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Preferenses",
                  style: TextStyle(
                    color: bubbleColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          ListTile(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              color: bubbleColor,
            ),
          ),
          ListTile(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              color: bubbleColor,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.group_rounded,
              size: 25,
              color: bubbleColor,
            ),
            title: Text(
              "Friends",
              style: settingsListStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              color: bubbleColor,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.download_rounded,
              size: 25,
              color: bubbleColor,
            ),
            title: Text(
              "Downloads",
              style: settingsListStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              color: bubbleColor,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.language_rounded,
              size: 25,
              color: bubbleColor,
            ),
            title: Text(
              "Language",
              style: settingsListStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              color: bubbleColor,
            ),
          ),
        ],
      ),
    );
  }
}
