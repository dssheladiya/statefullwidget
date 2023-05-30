import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 150),
            ElevatedButton(
              onPressed: () {
                print("hello");
              },
              child: Text("click"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                //alignment: Alignment.topCenter,\
                side: BorderSide(
                    color: Colors.red, width: 1, style: BorderStyle.none),
                elevation: 10,
                //padding: EdgeInsets.all(20),
                shadowColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                foregroundColor: Colors.pink,
                minimumSize: Size(150, 40),
              ),
            ),
            SizedBox(height: 50),
            TextButton(
              onPressed: () {},
              child: Text(
                "FORGOT PASSWORD ?",
                style: TextStyle(color: Colors.pink),
              ),
              style: TextButton.styleFrom(),
            ),
            SizedBox(height: 50),
            OutlinedButton(
              onPressed: () {},
              child: Text("Login"),
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.red, width: 1),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              child: Text("Click"),
              height: 50,
              color: Colors.red,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(color: Colors.black, width: 3),
              ),
              splashColor: Colors.yellowAccent,
            ),
            IconButton(
                iconSize: 50,
                onPressed: () {},
                icon: Icon(Icons.account_circle),
                // splashColor: Colors.deepPurple,
                color: Colors.red),
            InkWell(
              onLongPress: () {},
              splashColor: Colors.red,
              radius: 10,
              borderRadius: BorderRadius.circular(50),
              highlightColor: Colors.blueAccent,
              overlayColor: MaterialStatePropertyAll(Colors.yellowAccent),
              child: Text(
                "Click",
                style: TextStyle(fontSize: 50),
              ),
            ),
            GestureDetector(
              child: Container(height: 100, width: 100, color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
