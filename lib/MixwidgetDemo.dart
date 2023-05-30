import 'package:flutter/material.dart';

class mixwidgetDemo extends StatefulWidget {
  const mixwidgetDemo({Key? key}) : super(key: key);

  @override
  State<mixwidgetDemo> createState() => _mixwidgetDemoState();
}

class _mixwidgetDemoState extends State<mixwidgetDemo> {
  List name = ["A", "B", "C", "D", "E"];
  String expansionvalure = "A";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                    maxHeight: 400,
                    minHeight: 200,
                    maxWidth: 300,
                    minWidth: 200),
                child: Container(height: 400, width: 400, color: Colors.red),
              ),
              SizedBox(height: 20),
              Wrap(
                children: List.generate(
                  10,
                  (index) => Container(
                    height: 80,
                    width: 80,
                    color: Colors.red,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  ),
                ),
              ),
              ExpansionTile(
                initiallyExpanded: true,
                maintainState: true,
                title: Text("${expansionvalure}"),
                leading: Icon(Icons.account_balance),
                //trailing: Icon(Icons.arrow_downward_outlined),
                children: List.generate(
                  name.length,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        expansionvalure = name[index];
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 400,
                      margin: EdgeInsets.all(8),
                      color: expansionvalure == name[index]
                          ? Colors.blue
                          : Colors.white,
                      child: Center(child: Text("${name[index]}")),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
