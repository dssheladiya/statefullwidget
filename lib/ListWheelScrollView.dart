import 'package:flutter/material.dart';

class ListWheelScrollViewDemo extends StatefulWidget {
  const ListWheelScrollViewDemo({Key? key}) : super(key: key);

  @override
  State<ListWheelScrollViewDemo> createState() =>
      _ListWheelScrollViewDemoState();
}

class _ListWheelScrollViewDemoState extends State<ListWheelScrollViewDemo> {
  @override
  List name = [
    "Denish",
    "Deep",
    "Nevil",
    "Jenis",
    "Mahesh",
    "Viraj",
    "Jatydeep",
    "Nikunj"
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListWheelScrollView(
        itemExtent: 80,
        diameterRatio: 0.7,
        overAndUnderCenterOpacity: 0.3,
        // magnification: 0.5,
        //offAxisFraction: -1,
        squeeze: 3,
        useMagnifier: true,
        children: List.generate(name.length, (index) => Text("${name[index]}")),
      ),
    );
  }
}
