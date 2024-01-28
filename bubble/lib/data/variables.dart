import 'package:bubble/components/home_screen_acccounts.dart';
import 'package:bubble/data/colors.dart';
import 'package:bubble/screens/friends_screen.dart';
import 'package:bubble/screens/home_page.dart';
import 'package:bubble/screens/messages_screen.dart';
import 'package:bubble/screens/settings_screen.dart';
import 'package:flutter/material.dart';
String? errorMessage;
String? Username="Username";
String? Email="Examle@gmail.com";
int selectedIndex = 0;
bool checkValueUp = false;
bool checkValueIn = false;
bool notifications = false;
int accountIndex = 1;
int passwordIndex= 0;
TextStyle usernameStyle = const TextStyle(
  color: Colors.white,
  fontSize: 15,
);
TextStyle messageNumberStyle = const TextStyle(
  color: Colors.white,
  fontSize: 8,
);
TextStyle clockStyle = const TextStyle(
  color: Colors.white,
  fontSize: 10,
  fontWeight: FontWeight.w500,
);
TextStyle messageStyle = const TextStyle(
  color: bubbleColor,
  fontSize: 12,
);
TextStyle settingsListStyle = const TextStyle(
  color: Colors.white,
  fontSize: 15,
);
TextStyle settingsUserStyle = const TextStyle(
  color: Colors.white,
  fontSize: 15,
);
TextStyle settingsEmailStyle = const TextStyle(
  color: Colors.white,
  fontSize: 12,
);
SearchController searchController = SearchController();
TextEditingController firstNameController = TextEditingController();
TextEditingController lastNameController = TextEditingController();
TextEditingController numberController = TextEditingController();
TextEditingController signUpUsernameController = TextEditingController();
TextEditingController signUpEmailController = TextEditingController();
TextEditingController signUpPasswordController = TextEditingController();
TextEditingController signInEmailController = TextEditingController();
TextEditingController signInPasswordController = TextEditingController();
List password = [
  "1",
  "2",
  "3",
  "4",
  "5",
  "6",
  "7",
  "8",
  "9",
  "0",
];
List datas = [
  "salom",
  "qalesan",
  "yaxshi rahmat",
  "nima qilyapsan",
  "sen bilan bubble ilovasida yozishyapman",
  "Ha bubble ilovasi eng zo'r chat ilovasi😁shunday emasmi",
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
  const Settings(),
];

List HomeAccountTempleteList = [
  HomeAccounts(
      username: "Fasliddin Farhodjonov",
      message: "Salom qayerdasan 😀😀😀",
      image: "assets/images/user.png",
      messageNumber: 5,
      clock: "15:00"),
  HomeAccounts(
      username: "Abdulloh Aliyev",
      message: "Bugun meet qilamizmi?",
      image: "assets/images/user2.png",
      messageNumber: 1,
      clock: "18:14"),
  HomeAccounts(
      username: "Esonov Sunnatillo",
      message: "qaleysiz!!!",
      image: "assets/images/user.png",
      messageNumber: 3,
      clock: "07:35"),
  HomeAccounts(
      username: "Alexandr",
      message: "Hello my friend",
      image: "assets/images/user.png",
      messageNumber: 0,
      clock: "15:00"),
  HomeAccounts(
      username: "Elon Musk",
      message: "You are the best",
      image: "assets/images/user2.png",
      messageNumber: 1,
      clock: "12:14"),
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
      image: "assets/images/user2.png",
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
      image: "assets/images/user2.png",
      messageNumber: 3,
      clock: "07:35"),
];
