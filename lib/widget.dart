import 'package:flutter/material.dart';

class WidgetDemo extends StatefulWidget {
  const WidgetDemo({Key? key}) : super(key: key);

  @override
  State<WidgetDemo> createState() => _WidgetDemoState();
}

class _WidgetDemoState extends State<WidgetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(
                "Denish",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.w700,
                    wordSpacing: 2),
              ),
              SizedBox(height: 10),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
