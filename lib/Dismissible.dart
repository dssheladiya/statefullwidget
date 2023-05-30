import 'package:flutter/material.dart';

class DismissibleDemo extends StatefulWidget {
  const DismissibleDemo({Key? key}) : super(key: key);

  @override
  State<DismissibleDemo> createState() => _DismissibleDemoState();
}

class _DismissibleDemoState extends State<DismissibleDemo> {
  List name = ["Denish", "Viraj", "Deep", "Nikunj", "Jaydeep"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: List.generate(
            name.length,
            (index) => Dismissible(
              key: UniqueKey(),
              background: Icon(Icons.delete),
              // secondaryBackground: Icon(Icons.edit),
              crossAxisEndOffset: 5,
              child: Container(
                height: 40,
                width: 400,
                color: Colors.blue.shade50,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Center(child: Text("${name[index]}")),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
