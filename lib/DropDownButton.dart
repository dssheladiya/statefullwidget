import 'package:flutter/material.dart';

class DropDownButtonDemo extends StatefulWidget {
  const DropDownButtonDemo({Key? key}) : super(key: key);

  @override
  State<DropDownButtonDemo> createState() => _DropDownButtonDemoState();
}

class _DropDownButtonDemoState extends State<DropDownButtonDemo> {
  List name = [
    "Viraj",
    "Lakshit",
    "Denish",
    "Milan",
  ];

  String dropdownvalue = "Select value";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              hint: Text("${dropdownvalue}"),
              isExpanded: true,
              underline: SizedBox(),
              items: List.generate(
                name.length,
                (index) => DropdownMenuItem(
                  value: name[index],
                  child: Text("${name[index]}"),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  dropdownvalue = value as String;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
