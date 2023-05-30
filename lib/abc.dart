import 'package:flutter/material.dart';

import 'GridViewBuilderDemoWidget.dart';
import 'ListViewBuilderDemoWidget.dart';
import 'ListViewSeparatedWidget.dart';
import 'PageViewBuilderWidget.dart';

class WhatsApp1 extends StatefulWidget {
  const WhatsApp1({Key? key}) : super(key: key);

  @override
  State<WhatsApp1> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp1>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  initState() {
    tabController = TabController(length: 4, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.green,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text("viraj@gmail.com"),
              accountName: Text("Viraj"),
              currentAccountPicture: CircleAvatar(),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                    trailing: Icon(Icons.edit),
                  );
                },
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.more));
          },
        ),
        leadingWidth: 80,
        title: Text("WhatsApp"),
        titleSpacing: 20,
        centerTitle: true,
        actions: [
          Icon(Icons.search),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("Security"),
                ),
                PopupMenuItem(
                  child: Text("Lincked Device"),
                ),
                PopupMenuItem(
                  child: Text("Starred MAssages"),
                ),
                PopupMenuItem(
                  child: Text("Settings"),
                ),
                PopupMenuItem(
                  child: Text("Privacy"),
                ),
              ];
            },
          ),
          SizedBox(
            width: 10,
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: TabBar(
            controller: tabController,
            indicatorColor: Colors.red,
            indicatorWeight: 5,
            indicatorSize: TabBarIndicatorSize.tab,
            labelPadding: EdgeInsets.symmetric(vertical: 0),
            indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Icon(
                  Icons.people_sharp,
                ),
              ),
              Text("Chatting"),
              Text("Status"),
              Text("Calls"),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          ListViewBuilderDemo(),
          ListViewSeparatedDemo(),
          GridViewBuilderDemo(),
          PageViewDemo(),
        ],
      ),
    );
  }
}
