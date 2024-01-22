import 'package:bubble/data/variables.dart';

void selectBottom(value) {
  selectedIndex = value;
}

void datasadd() {
  if (firstNameController.text.isNotEmpty) {
    datas.add(firstNameController.text);
  }else{
    print("xato");
  }
  searchController.clear();
}
