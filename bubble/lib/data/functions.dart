import 'package:bubble/data/variables.dart';

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
