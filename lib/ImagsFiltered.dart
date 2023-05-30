import 'dart:ui';

import 'package:flutter/material.dart';

class imagsfilreredDemo extends StatefulWidget {
  const imagsfilreredDemo({Key? key}) : super(key: key);

  @override
  State<imagsfilreredDemo> createState() => _imagsfilreredDemoState();
}

class _imagsfilreredDemoState extends State<imagsfilreredDemo> {
  double sigmax = 0.0;
  double sigmay = 0.0;
  double rotation = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: sigmax, sigmaY: sigmay),
            child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVGHL9r9OucwArH8yO3rEDPryG4V3tSCBw-w&usqp=CAU",
                height: 350,
                width: 415),
          ),
          SizedBox(height: 30),
          ImageFiltered(
            imageFilter: ImageFilter.matrix(Matrix4.skewX(rotation).storage),
            child: Text("data"),
          ),
          SizedBox(height: 30),
          Slider(
              min: 0,
              max: 10,
              value: sigmax,
              onChanged: (double value) {
                setState(() {
                  sigmax = value;
                });
              }),
          Text("${sigmax.toStringAsFixed(0)}"),
          SizedBox(height: 20),
          Slider(
              min: 0,
              max: 10,
              value: sigmay,
              onChanged: (double value) {
                setState(() {
                  sigmay = value;
                });
              }),
          Text("${sigmay.toStringAsFixed(0)}"),
          SizedBox(height: 20),
          Slider(
              max: 1,
              min: 0,
              value: rotation,
              onChanged: (double value) {
                setState(() {
                  rotation = value;
                });
              }),
        ],
      ),
    );
  }
}
