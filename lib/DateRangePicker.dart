import 'package:flutter/material.dart';

class DaterangepickerDemo extends StatefulWidget {
  const DaterangepickerDemo({Key? key}) : super(key: key);

  @override
  State<DaterangepickerDemo> createState() => _DaterangepickerDemoState();
}

class _DaterangepickerDemoState extends State<DaterangepickerDemo> {
  var data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
          showDateRangePicker(
                  initialEntryMode: DatePickerEntryMode.calendar,
                  cancelText: "exit",
                  confirmText: "done",
                  saveText: "Done",
                  context: context,
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100))
              .then((value) {
            setState(() {});
            data = value!.duration.inDays;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text("${data}"),
      ),
    );
  }
}
