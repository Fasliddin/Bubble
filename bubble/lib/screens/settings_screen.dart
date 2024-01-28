import 'package:bubble/data/colors.dart';
import 'package:bubble/data/variables.dart';
// import 'package:bubble/data/variables.dart';
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
        toolbarHeight: 200,
        title: Column(
          children: [
            CircleAvatar(
              radius: 42,
              backgroundColor: bubbleColor,
              child: CircleAvatar(
                backgroundColor: background,
                radius: 40,
                backgroundImage: AssetImage(
                  "assets/images/user2.png",
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width / 5,
                vertical: 5,
              ),
              child: ElevatedButton.icon(
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      side: BorderSide(
                        color: bottomNavigationColor.withOpacity(
                          0.30,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(
                        10,
                      ))),
                  backgroundColor: MaterialStatePropertyAll(
                    bubbleColor,
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: bubbleColor,
                      title: Text("Edit profile"),
                      icon: Icon(Icons.drive_file_rename_outline_rounded),
                      titlePadding: EdgeInsets.all(5),
                    ),
                  );
                },
                icon: Icon(
                  Icons.drive_file_rename_outline_rounded,
                  color: bottomNavigationColor,
                ),
                label: Text(
                  "Edit profile",
                  style: TextStyle(
                    color: bottomNavigationColor,
                    fontSize: 15,
                  ),
                ),
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
              width: 45,
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
