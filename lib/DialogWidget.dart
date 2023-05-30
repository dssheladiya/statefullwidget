import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkResponse(
                        onTap: () {
                          setState(() {});
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                child: Container(
                                  height: 300,
                                  width: 300,
                                  color: Colors.red,
                                ),
                              );
                            },
                          );
                        },
                        child: CircleAvatar(
                          radius: 40,
                        ),
                      ),
                      Text("Viraj Asodariya"),
                      Icon(Icons.edit),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
