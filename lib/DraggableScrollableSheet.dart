import 'package:flutter/material.dart';

class DraggableScrollablesheetDemo extends StatefulWidget {
  const DraggableScrollablesheetDemo({Key? key}) : super(key: key);

  @override
  State<DraggableScrollablesheetDemo> createState() =>
      _DraggableScrollablesheetDemoState();
}

class _DraggableScrollablesheetDemoState
    extends State<DraggableScrollablesheetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR27MT1kvMKN5FB8ew06xRHCNVGj963vMcciNGJ7iESYrTcZc0_"
              "AeOzpGCbgM1-_emumUE&usqp=CAU",
              height: 400,
              width: 415,
              fit: BoxFit.cover),
          Expanded(
            child: DraggableScrollableSheet(
              minChildSize: 0.1,
              maxChildSize: 0.8,
              snap: true,
              builder: (context, scrollController) {
                return ListView.builder(
                  controller: scrollController,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 50,
                      width: double.infinity,
                      color: Colors.blue.withOpacity(0.3),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                        child: Text(
                          "${index}",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
