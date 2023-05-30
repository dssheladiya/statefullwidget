import 'package:flutter/material.dart';

class timepickerDemo extends StatefulWidget {
  const timepickerDemo({Key? key}) : super(key: key);

  @override
  State<timepickerDemo> createState() => _timepickerDemoState();
}

class _timepickerDemoState extends State<timepickerDemo> {
  String? time;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
          showTimePicker(
                  context: context,
                  initialTime: TimeOfDay(hour: 12, minute: 60))
              .then((value) {
            time = value!.format(context);
            setState(() {});
          });
        },
        child: Text("Click"),
      ),
      body: Center(
        child: Text("${time}", style: TextStyle(fontSize: 35)),
      ),
    );
  }
}
