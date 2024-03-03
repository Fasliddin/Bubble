import 'package:bubble/data/colors.dart';
import 'package:bubble/data/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: bottomNavigationColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      icon: CircleAvatar(
        radius: 32,
        backgroundColor: bubbleColor,
        child: CircleAvatar(
          backgroundColor: background,
          radius: 30,
          backgroundImage: AssetImage(
            imageApplication,
          ),
        ),
      ),
      iconPadding: EdgeInsets.all(15),
      titlePadding: EdgeInsets.all(0),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Bubble",
              style: TextStyle(
                color: bubbleColor,
                fontSize: 22,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
                shadows: [
                  Shadow(
                    offset: Offset(
                      2,
                      2,
                    ),
                    blurRadius: 0,
                    color: background,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Versiya: ",
                style: TextStyle(
                  color: bubbleColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  shadows: [
                    Shadow(
                      offset: Offset(
                        2,
                        2,
                      ),
                      blurRadius: 0,
                      color: background,
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                " $version",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
      content: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          "Bu chat ilovasi sizga qulaylik va yengillik beradi.Bu ilova xavfsizligingizni taminlaydi.",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 20),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "Orqaga",
            style: TextStyle(
              color: bubbleColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
