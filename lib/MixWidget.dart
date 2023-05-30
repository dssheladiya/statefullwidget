import 'package:flutter/material.dart';

import 'TextGradient.dart';

class MixWidget extends StatefulWidget {
  const MixWidget({Key? key}) : super(key: key);

  @override
  State<MixWidget> createState() => _MixWidgetState();
}

class _MixWidgetState extends State<MixWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Divider(
              color: Colors.black,
              thickness: 2,
              indent: 50,
              endIndent: 50,
              height: 50,
            ),
            // Spacer(),
            Divider(
              color: Colors.black,
              thickness: 2,
              indent: 50,
              endIndent: 50,
            ),
            // Spacer(),
            CircleAvatar(
              backgroundColor: Colors.red,
              radius: 30,
              backgroundImage: AssetImage("assets/images/1.jpg"),
              child: Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.red,
              radius: 30,
              backgroundImage: AssetImage("assets/images/1.jpg"),
              child: Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              ),
            ),
            InkResponse(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TextGradientDemo(),
                    ));
              },
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 30,
                backgroundImage: AssetImage(
                    "assets/images/images__30_-removebg-preview.png"),
                child: Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Container(
                // height: 200,
                // width: 300,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
