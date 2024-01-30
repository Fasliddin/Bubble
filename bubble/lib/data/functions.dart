import 'package:bubble/data/variables.dart';
import 'package:bubble/screens/messages_screen.dart';

void selectBottom(value) {
  selectedIndex = value;
}

void datasadd() {
  if (searchController.text.isNotEmpty) {
    datas.add(searchController.text);
  } else {
    print("xato");
  }
  searchController.clear();
}

void adding() {
  if (searchController.text.isNotEmpty) {
    datas.add(searchController.text);
  } else {
    print("xato");
  }
  // searchController.clear();
}

void onLongPressDownFunc() {
  if (appBar == appbar1) {
    appBar = appbar2;
  } else {
    appBar = appbar1;
  }
}
