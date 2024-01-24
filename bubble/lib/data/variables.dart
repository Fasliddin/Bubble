import 'package:bubble/components/home_screen_acccounts.dart';
import 'package:bubble/data/colors.dart';
import 'package:bubble/screens/account_screen.dart';
import 'package:bubble/screens/friends_screen.dart';
import 'package:bubble/screens/home_page.dart';
import 'package:bubble/screens/messages_screen.dart';
import 'package:flutter/material.dart';

int selectedIndex = 0;
TextStyle usernameStyle = TextStyle(
  color: Colors.white,
  fontSize: 15,
);
TextStyle messageNumberStyle = TextStyle(
  color: Colors.white,
  fontSize: 8,
);
TextStyle clockStyle = TextStyle(
  color: Colors.white,
  fontSize: 10,
  fontWeight: FontWeight.w500,
);
TextStyle messageStyle = TextStyle(
  color: bubbleColor,
  fontSize: 12,
);
SearchController searchController = SearchController();
TextEditingController firstNameController = TextEditingController();
TextEditingController lastNameController = TextEditingController();
TextEditingController numberController = TextEditingController();
List datas = [
  "salom",
  "salom",
];

List<IconData> listOfIcons = [
  Icons.home_rounded,
  Icons.group_rounded,
  Icons.message_rounded,
  Icons.settings_rounded,
];
List<String> listOfText = [
  "Home",
  "Friends",
  "Messages",
  "Settings",
];
List listOfScreens = [
  const HomePage(),
  const FriendsPage(),
  const MessagesPage(),
  const AccountPage(),
];

List HomeAccountTempleteList = [
  HomeAccounts(
      username: "Fasliddin Farhodjonov",
      message: "Salom qandaysan 😀😀😀",
      image: "assets/images/user.png",
      messageNumber: 2,
      clock: "15:00"),
  HomeAccounts(
      username: "Abdulloh Aliyev",
      message: "Bugun meet qilamizmi?",
      image: "assets/images/user.png",
      messageNumber: 1,
      clock: "18:14"),
  HomeAccounts(
      username: "Esonov Sunnatillo",
      message: "qaleysiz!!!",
      image: "assets/images/user.png",
      messageNumber: 3,
      clock: "07:35"),
  HomeAccounts(
      username: "Fasliddin Farhodjonov",
      message: "Salom qandaysan 😀😀😀",
      image: "assets/images/user.png",
      messageNumber: 2,
      clock: "15:00"),
  HomeAccounts(
      username: "Abdulloh Aliyev",
      message: "Bugun meet qilamizmi?",
      image: "assets/images/user.png",
      messageNumber: 1,
      clock: "18:14"),
  HomeAccounts(
      username: "Esonov Sunnatillo",
      message: "qaleysiz!!!",
      image: "assets/images/user.png",
      messageNumber: 3,
      clock: "07:35"),
  HomeAccounts(
      username: "Fasliddin Farhodjonov",
      message: "Salom qandaysan 😀😀😀",
      image: "assets/images/user.png",
      messageNumber: 2,
      clock: "15:00"),
  HomeAccounts(
      username: "Abdulloh Aliyev",
      message: "Bugun meet qilamizmi?",
      image: "assets/images/user.png",
      messageNumber: 1,
      clock: "18:14"),
  HomeAccounts(
      username: "Esonov Sunnatillo",
      message: "qaleysiz!!!",
      image: "assets/images/user.png",
      messageNumber: 3,
      clock: "07:35"),
  HomeAccounts(
      username: "Fasliddin Farhodjonov",
      message: "Salom qandaysan 😀😀😀",
      image: "assets/images/user.png",
      messageNumber: 2,
      clock: "15:00"),
  HomeAccounts(
      username: "Abdulloh Aliyev",
      message: "Bugun meet qilamizmi?",
      image: "assets/images/user.png",
      messageNumber: 1,
      clock: "18:14"),
  HomeAccounts(
      username: "Esonov Sunnatillo",
      message: "qaleysiz!!!",
      image: "assets/images/user.png",
      messageNumber: 3,
      clock: "07:35"),
];
