import 'package:flutter/material.dart';

class SliverAppbaeDemo extends StatefulWidget {
  const SliverAppbaeDemo({Key? key}) : super(key: key);

  @override
  State<SliverAppbaeDemo> createState() => _SliverAppbaeDemoState();
}

class _SliverAppbaeDemoState extends State<SliverAppbaeDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            title: Text("hello"),
            //toolbarHeight: 100,
            backgroundColor: Colors.teal,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Sliver  App Bae"),
              background:
                  Image.asset("assets/images/images__30_-removebg-preview.png"),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(height: 200, width: 400, color: Colors.blue),
                Container(height: 100, width: 400, color: Colors.blue),
                Container(height: 500, width: 400, color: Colors.blue),
                Container(height: 100, width: 400, color: Colors.blue),
                Container(height: 200, width: 400, color: Colors.blue),
                Container(height: 100, width: 400, color: Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
