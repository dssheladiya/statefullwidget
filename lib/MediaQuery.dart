import 'package:flutter/material.dart';

class mediaqueryDemo extends StatefulWidget {
  const mediaqueryDemo({Key? key}) : super(key: key);

  @override
  State<mediaqueryDemo> createState() => _mediaqueryDemoState();
}

class _mediaqueryDemoState extends State<mediaqueryDemo> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: height * 0.20,
              width: width * 0.30,
              color: Colors.black,
            ),
            SizedBox(height: height * 0.020),
            Container(
              height: height * 0.20,
              width: width * 0.30,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
