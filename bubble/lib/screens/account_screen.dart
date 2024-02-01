import 'dart:math';

import 'package:bubble/data/colors.dart';
import 'package:bubble/data/functions.dart';
import 'package:bubble/data/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

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
                          title: Text(
                            "Tahrirlash",
                            style: settingsListStyle,
                          ),
                          leading: IconButton(
                            onPressed: () {
                              setState(() {
                                account_screenindex = index;
                                sendController.text = datas[index];
                                Navigator.pop(context);
                              });
                            },
                            icon: Icon(
                              Icons.edit_rounded,
                              color: bubbleColor,
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            "Nusxalash",
                            style: settingsListStyle,
                          ),
                          leading: IconButton(
                            onPressed: () {
                              setState(() {
                                Clipboard.setData(
                                  ClipboardData(
                                    text: datas[index],
                                  ),
                                );
                                Navigator.pop(context);
                              });
                            },
                            icon: Icon(
                              Icons.copy_rounded,
                              color: bubbleColor,
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            "O'chirish",
                            style: settingsListStyle,
                          ),
                          leading: IconButton(
                            onPressed: () {
                              setState(() {
                                datas.removeAt(index);
                                Navigator.pop(context);
                              });
                            },
                            icon: Icon(
                              Icons.delete_rounded,
                              color: bubbleColor,
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            "Javob berish",
                            style: settingsListStyle,
                          ),
                          leading: Builder(
                            builder: (context) {
                              return IconButton(
                                onPressed: () {
                                  setState(() {
                                    ScaffoldMessenger.of(context)
                                        .showMaterialBanner(
                                      MaterialBanner(
                                        dividerColor: Colors.transparent,
                                        backgroundColor: background,
                                        padding: EdgeInsets.all(10),
                                        content: Text(
                                          datas[index],
                                        ),
                                        contentTextStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              // ScaffoldMessenger.of(context)
                                              //     .clearMaterialBanners();
                                            },
                                            child: Text("Bekor qilish"),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                                },
                                icon: Icon(
                                  Icons.forward_rounded,
                                  color: bubbleColor,
                                ),
                              );
                            }
                          ),
                        ),
                      ],
                    ),
                  );
                },
                child: ChatBubble(
                  margin: EdgeInsets.only(top: 5),
                  clipper: ChatBubbleClipper4(
                      type: index % 2 == 0
                          ? BubbleType.sendBubble
                          : BubbleType.receiverBubble),
                  elevation: 1,
                  shadowColor: bottomNavigationColor.withOpacity(0.50),
                  alignment:
                      index % 2 == 0 ? Alignment.topLeft : Alignment.topRight,
                  backGroundColor:
                      index % 2 == 0 ? bubbleColor : bottomNavigationColor,
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.7,
                    ),
                    child: SelectableText(
                      datas[index],
                      textAlign: TextAlign.start,
                      style: accountMessageStyle,
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
            controller: sendController,
            onSubmitted: (value) {
              setState(() {
                adding();
              });
            },
            trailing: [
              IconButton(
                onPressed: () {
                  setState(() {
                    if (sendController.text.isNotEmpty) {
                      datas[account_screenindex] = sendController.text;
                    }
                    sendController.clear();
                  });
                },
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
