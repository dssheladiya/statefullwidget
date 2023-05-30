import 'package:flutter/material.dart';
import 'package:statefullwidget/timer.dart';
import 'package:statefullwidget/widget.dart';
import 'Appbar.Widget.dart';
import 'Button.dart';
import 'CommonTextFiled.dart';
import 'Data Table.dart';
import 'DatePicker.dart';
import 'DateRangePicker.dart';
import 'Dismissible.dart';
import 'DraggableScrollableSheet.dart';
import 'DropDownButton.dart';
import 'ImagsFiltered.dart';
import 'ListViewBuilderDemoWidget.dart';
import 'GridViewBuilderDemoWidget.dart';
import 'ListWheelScrollView.dart';
import 'MediaQuery.dart';
import 'MixWidget.dart';
import 'MixwidgetDemo.dart';
import 'ReoderableList.dart';
import 'Search.dart';
import 'SliderthemeWidget.dart';
import 'ListViewSeparatedWidget.dart';
import 'BottomnavbarWidget.dart';
import 'PageViewBuilderWidget.dart';
import 'SliverAppBae.dart';
import 'TextFormField.dart';
import 'TextGradient.dart';
import 'Textfeiild.dart';
import 'TimePicker.dart';
import 'ToggleDemo.dart';
import 'abc.dart';
import 'DialogWidget.dart';
import 'otp timer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ElevatedButtonWidget(),
    );
  }
}
