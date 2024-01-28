// import 'package:bubble/data/colors.dart';
// import 'package:bubble/data/variables.dart';
// import 'package:bubble/screens/account_screen.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class AccountListPage extends StatefulWidget {
//   const AccountListPage({Key? key, required this.index}) : super(key: key);

//   final int index;

//   @override
//   State<AccountListPage> createState() => _AccountListPageState();
// }

// class _AccountListPageState extends State<AccountListPage> {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onLongPress: () {
//         showDialog(
//           context: context,
//           builder: (context) => SimpleDialog(
//             title: Text("Clear accounts"),
//             children: [
//               TextButton(
//                 onPressed: () {
//                   setState(() {
//                     HomeAccountTempleteList.removeAt(widget.index);
//                     Navigator.pop(context);
//                   });
//                 },
//                 child: Text("Clear"),
//               ),
//             ],
//           ),
//         );
//       },
//       child: ListTile(
//         onTap: () {
//           Navigator.push(
//             context,
//             CupertinoPageRoute(
//               builder: (context) => AccountPage(),
//             ),
//           );
//         },
//         title: Text(
//           HomeAccountTempleteList[widget.index].username,
//           style: usernameStyle,
//         ),
//         subtitle: Text(
//           HomeAccountTempleteList[widget.index].message,
//           style: messageStyle,
//         ),
//         leading: CircleAvatar(
//           backgroundColor: bubbleColor,
//           child: Padding(
//             padding: const EdgeInsets.all(2.0),
//             child: CircleAvatar(
//               radius: 20,
//               backgroundColor: bubbleColor,
//               backgroundImage:
//                   AssetImage(HomeAccountTempleteList[widget.index].image),
//             ),
//           ),
//         ),
//         isThreeLine: false,
//         trailing: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(2.0),
//               child: Text(
//                 HomeAccountTempleteList[widget.index].clock.toString(),
//                 style: clockStyle,
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             Visibility(
//               visible: HomeAccountTempleteList[widget.index].messageNumber > 0
//                   ? true
//                   : false,
//               child: CircleAvatar(
//                 radius: 9,
//                 backgroundColor: Colors.white,
//                 child: CircleAvatar(
//                   radius: 8,
//                   backgroundColor: bubbleColor,
//                   child: Center(
//                     child: Text(
//                       HomeAccountTempleteList[widget.index]
//                           .messageNumber
//                           .toString(),
//                       style: messageNumberStyle,
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
