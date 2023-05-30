import 'package:flutter/material.dart';

import 'CommonTextFiled.dart';

class Textfeild extends StatefulWidget {
  const Textfeild({Key? key}) : super(key: key);

  @override
  State<Textfeild> createState() => _TextfeildState();
}

class _TextfeildState extends State<Textfeild> {
  TextEditingController deep = TextEditingController();
  TextEditingController deep1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(height: 50),
              CommonTextFiled(
                obscure: true,
                hint: "Email",
              ),
              CommonTextFiled(
                obscure: true,
              ),
              CommonTextFiled(
                obscure: true,
              ),
              CommonTextFiled(
                obscure: true,
              ),
              // TextField(
              //   decoration: InputDecoration(
              //     label: Text(
              //       "Name",
              //       style: TextStyle(
              //         fontSize: 20,
              //       ),
              //     ),
              //     enabledBorder: OutlineInputBorder(
              //       borderSide: BorderSide(
              //         width: 3,
              //         color: Colors.black38,
              //       ),
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //       borderSide: BorderSide(
              //         width: 3,
              //         color: Colors.green,
              //       ),
              //       borderRadius: BorderRadius.circular(30),
              //     ),
              //   ),
              //   keyboardType: TextInputType.text,
              //   controller: deep,
              // ),
              SizedBox(
                height: 20,
              ),
              // TextField(
              //   decoration: InputDecoration(
              //     label: Text(
              //       "Phone number",
              //       style: TextStyle(
              //         fontSize: 20,
              //       ),
              //     ),
              //     enabledBorder: OutlineInputBorder(
              //       borderSide: BorderSide(
              //         width: 3,
              //         color: Colors.black38,
              //       ),
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //       borderSide: BorderSide(
              //         width: 3,
              //         color: Colors.green,
              //       ),
              //       borderRadius: BorderRadius.circular(30),
              //     ),
              //   ),
              //   keyboardType: TextInputType.number,
              //   controller: deep1,
              // ),
              SizedBox(
                height: 30,
              ),
              InkResponse(
                onTap: () {
                  var text = deep.text.toString();
                  print(text);
                  var text1 = deep1.text.toString();
                  print(text1);
                },
                child: Container(
                  height: 80,
                  width: 200,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              InkResponse(
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 25,
                    color: Colors.white,
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
