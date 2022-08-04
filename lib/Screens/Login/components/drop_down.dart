import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  final List<String> items = [
    'English',
    'Arabic',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {

    return DropdownButtonFormField(


        items: items.map((String category) {
          return new DropdownMenuItem(
              value: category,
              child: Row(
                children: <Widget>[
                  Text(category),
                ],
              ));
        }).toList(),
        onChanged: (newValue) {
          // do other stuff with _category
        },
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.language_outlined),
          contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        //  hintText: "",
          labelText: 'Choose your prefered language',
          labelStyle: TextStyle(
              color: Colors.black38, fontSize: 15
          ),          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
        ));
  }
}
