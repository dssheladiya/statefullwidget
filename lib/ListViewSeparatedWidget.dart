import 'package:flutter/material.dart';

class ListViewSeparatedDemo extends StatefulWidget {
  const ListViewSeparatedDemo({Key? key}) : super(key: key);

  @override
  State<ListViewSeparatedDemo> createState() => _ListViewSeparatedDemoState();
}

class _ListViewSeparatedDemoState extends State<ListViewSeparatedDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 200,
                  width: 500,
                  color: Colors.red,
                  margin: EdgeInsets.symmetric(vertical: 1),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return index % 2 == 1
                    ? Container(
                        height: 100,
                        width: 500,
                        color: Colors.green,
                        margin: EdgeInsets.symmetric(vertical: 5),
                      )
                    : SizedBox();
              },
              itemCount: 4,
            ),
          ),
        ],
      ),
    );
  }
}
