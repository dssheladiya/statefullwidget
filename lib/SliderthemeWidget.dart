import 'dart:ffi';

import 'package:flutter/material.dart';

class Slidertheme extends StatefulWidget {
  const Slidertheme({Key? key}) : super(key: key);

  @override
  State<Slidertheme> createState() => _SliderthemeState();
}

class _SliderthemeState extends State<Slidertheme> {
  double slidervalue = 0;
  int select = 0;
  bool isswitch = false;
  bool ischeck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Switch.adaptive(
          //   value: isswitch,
          //   onChanged: (value) {
          //     setState(() {
          //       isswitch = !isswitch;
          //     });
          //   },
          // ),
          Switch(
              value: isswitch,
              focusColor: Colors.red,
              activeColor: Colors.red,
              activeTrackColor: Colors.green,
              onChanged: (value) {
                setState(() {
                  isswitch = !isswitch;
                });
              }),
          SliderTheme(
            data: SliderThemeData(
              valueIndicatorTextStyle: TextStyle(
                color: Colors.black,
              ),
              activeTrackColor: Colors.green,
              inactiveTickMarkColor: Colors.transparent,
              inactiveTrackColor: Colors.orangeAccent,
              thumbColor: Colors.white,
              activeTickMarkColor: Colors.white,
              valueIndicatorColor: Colors.transparent,
              overlayColor: Colors.lightBlueAccent,
              trackHeight: 3,
            ),
            child: Slider.adaptive(
              value: slidervalue,
              min: 0,
              max: 100,
              divisions: 10,
              label: "€${slidervalue.toStringAsFixed(1)}",
              onChanged: (value) {
                setState(() {});
                slidervalue = value;
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Male"),
              Radio(
                value: 1,
                groupValue: select,
                onChanged: (int? value) {
                  setState(() {});
                  select = value!;
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Female"),
              Radio(
                value: 2,
                groupValue: select,
                onChanged: (int? value) {
                  setState(() {});
                  select = value!;
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Aaaaa"),
              Radio(
                value: 3,
                groupValue: select,
                onChanged: (int? value) {
                  setState(() {});
                  select = value!;
                },
              ),
            ],
          ),
          Checkbox(
            value: ischeck,
            onChanged: (value) {
              setState(() {
                ischeck = value!;
              });
            },
          ),
          CircularProgressIndicator(// color: Colors.red,
              // backgroundColor: Colors.green,
              ),
          SizedBox(height: 60),
          LinearProgressIndicator(
            color: Colors.lightBlue,
            backgroundColor: Colors.red,
            minHeight: 3,
          ),
        ],
      ),
    );
  }
}
