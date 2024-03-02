import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bubble/data/colors.dart';
import 'package:bubble/data/variables.dart';
import 'package:bubble/screens/home_screen.dart';

class AcessCodePageRemover extends StatefulWidget {
  const AcessCodePageRemover({Key? key}) : super(key: key);

  @override
  State<AcessCodePageRemover> createState() => _AcessCodePageRemoverState();
}

class _AcessCodePageRemoverState extends State<AcessCodePageRemover> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        iconTheme: IconThemeData(
          size: 35,
          color: bubbleColor,
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              CupertinoPageRoute(
                builder: (context) => Home(),
              ),
              (route) => false,
            );
          },
          icon: Icon(Icons.chevron_left_rounded),
        ),
        backgroundColor: background,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: size.width,
            height: size.height / 5.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Kirish kodini o'chirish",
                  style: TextStyle(
                    color: bubbleColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Kirish kodini o'chirish uchun avval o'rnatilgan kirish kodini kiriting.",
                  style: TextStyle(
                    color: bubbleColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width,
            height: size.height / 5.5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                readOnly: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "0000",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 46,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 8,
                  ),
                ),
                textAlign: TextAlign.center,
                controller: passwordRemoveController,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 46,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 8,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: size.width - 10,
                height: size.height / 2.6,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: GridView.builder(
                    itemCount: safetyRemover.length,
                    addAutomaticKeepAlives: true,
                    addSemanticIndexes: true,
                    primary: true,
                    clipBehavior: Clip.hardEdge,
                    physics: BouncingScrollPhysics(),
                    addRepaintBoundaries: true,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 10 / 5,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            print(index);
                            if (index == 10 &&
                                passwordRemoveController.text.isNotEmpty) {
                              passwordRemoveController.text =
                                  passwordRemoveController.text.substring(0,
                                      passwordRemoveController.text.length - 1);
                            } else if (passwordRemoveController.text.length <
                                4) {
                              passwordRemoveController.text +=
                                  safetyRemover[index];
                            }
                            if (passwordRemoveController.text.length == 4 &&
                                passwordRemoveController.text==safetyPassword) {
                              showAlertDialog(context);
                            }
                          });
                        },
                        child: Container(
                          width: size.width / 8,
                          height: size.height / 8,
                          decoration: BoxDecoration(
                            color: bottomNavigationColor,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: bubbleColor.withOpacity(0.10),
                              width: 0.50,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              safetyRemover[index].toString(),
                              style: TextStyle(
                                color: bubbleColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: background,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          title: Text(
            "Kirish kodi o'chirilsinmi?",
            style: TextStyle(
                fontSize: 18, color: bubbleColor, fontWeight: FontWeight.w600),
          ),
          content: Row(
            children: [
              Text(
                "Kirish kodi: ",
                style: TextStyle(
                    fontSize: 16,
                    color: bubbleColor,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "${passwordRemoveController.text}",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Yo'q",
                style: TextStyle(
                    fontSize: 16,
                    color: bubbleColor,
                    fontWeight: FontWeight.w500),
              ),
            ),
            TextButton(
              onPressed: () {
                checkPassword = false;
                safetyPassword=null;
                onOrOff=false;
                passwordRemoveController.text="";
                Navigator.pushAndRemoveUntil(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => Home(),
                    ),
                    (route) => false);
                print(checkPassword);
              },
              child: Text(
                "Ha",
                style: TextStyle(
                    fontSize: 16,
                    color: bubbleColor,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        );
      },
    );
  }
}
