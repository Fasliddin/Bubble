import 'package:flutter/material.dart';

int selectedIndex = 0;
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
