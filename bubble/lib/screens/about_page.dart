import 'package:bubble/data/colors.dart';
import 'package:bubble/data/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class AboutPage extends StatefulWidget {
//   const AboutPage({super.key});

//   @override
//   State<AboutPage> createState() => _AboutPageState();
// }

// class _AboutPageState extends State<AboutPage> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: background,
//       appBar: AppBar(
//         backgroundColor: background,
//         iconTheme: IconThemeData(
//           size: 35,
//           color: bubbleColor,
//         ),
//         automaticallyImplyLeading: false,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: Icon(Icons.chevron_left_rounded),
//         ),
//         centerTitle: true,
//         title: Text(
//           "Ilova haqida",
//           style: TextStyle(
//             color: bubbleColor,
//             fontSize: 22,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             SizedBox(
//               width: size.width,
//               height: size.height / 2,
//               child: Card(
//                 color: bottomNavigationColor,
//                 elevation: 0,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     CircleAvatar(
//                       radius: 80,
//                       backgroundColor: bubbleColor,
//                       child: CircleAvatar(
//                         radius: 78,
//                         backgroundColor: background,
//                         backgroundImage: AssetImage(imageUser),
//                       ),
//                     ),
//                     Text(
//                       "Version name: $version",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.telegram_rounded,
//                     color: bubbleColor,
//                     size: 25,
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.network_check_rounded,
//                     color: bubbleColor,
//                     size: 25,
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.flutter_dash_rounded,
//                     color: bubbleColor,
//                     size: 25,
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
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
      title: Text(
        "Version name: $version",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 30),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "Chiqish",
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
