import 'package:bubble/data/colors.dart';
import 'package:bubble/data/functions.dart';
import 'package:bubble/data/variables.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class AddAccount extends StatefulWidget {
  const AddAccount({super.key});

  @override
  State<AddAccount> createState() => _AddAccountState();
}

class _AddAccountState extends State<AddAccount> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: const BoxDecoration(
        color: background,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "New contact",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: firstNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              controller: lastNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            IntlPhoneField(
              showDropdownIcon: true,
              showCountryFlag: true,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              dropdownTextStyle: const TextStyle(color: Colors.white),
              style: const TextStyle(color: Colors.white),
              autofocus: false,
              cursorRadius: const Radius.circular(50),
              controller: numberController,
              pickerDialogStyle: PickerDialogStyle(
                width: size.width,
                padding: const EdgeInsets.all(10),
                backgroundColor: background,
                countryCodeStyle: const TextStyle(
                  color: bubbleColor,
                ),
                countryNameStyle: const TextStyle(color: Colors.white),
                searchFieldCursorColor: bubbleColor,
                searchFieldPadding: const EdgeInsets.all(15),
                listTilePadding: const EdgeInsets.all(1),
                listTileDivider: Container(),
                searchFieldInputDecoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: bubbleColor,
                    ),
                  ),
                ),
              ),
              dropdownDecoration: const BoxDecoration(
                color: Colors.transparent,
                backgroundBlendMode: BlendMode.difference,
              ),
              dropdownIcon: const Icon(
                Icons.keyboard_arrow_down_rounded,
              ),
              decoration: InputDecoration(
                labelText: 'Phone number',
                floatingLabelStyle:
                    const TextStyle(color: bubbleColor, fontSize: 14),
                floatingLabelAlignment: FloatingLabelAlignment.start,
                helperStyle: const TextStyle(color: bubbleColor, fontSize: 12),
                labelStyle: TextStyle(
                    color: bubbleColor.withOpacity(0.50), fontSize: 14),
                prefixStyle: const TextStyle(color: bubbleColor, fontSize: 12),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              initialCountryCode: 'UZ',
              onChanged: (phone) {
                // print(phone.completeNumber);
              },
            ),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                backgroundColor: const MaterialStatePropertyAll(
                  bubbleColor,
                ),
              ),
              onPressed: () {
                setState(() {
                  datasadd();
                });
              },
              child: SizedBox(
                width: size.width,
                height: 50,
                child:const Center(
                  child: Text(
                    "Create contact",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
