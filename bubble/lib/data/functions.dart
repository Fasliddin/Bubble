import 'package:bubble/data/variables.dart';


void selectBottom(value) {
  selectedIndex = value;
}

void datasadd() {
  if (sendController.text.isNotEmpty) {
    datas.add(sendController.text);
  } else {
    print("xato");
  }
  sendController.clear();
}

void adding() {
  if (sendController.text.isNotEmpty) {
    datas.add(sendController.text);
  } else {
    print("xato");
  }
  // sendController.clear();
}
