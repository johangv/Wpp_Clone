import 'package:flutter/material.dart';
import 'package:wpp_clone/Pages/calls.dart';
import 'package:wpp_clone/Pages/camera.dart';
import 'package:wpp_clone/Pages/status.dart';
import 'package:wpp_clone/Pages/chats.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  late TabController _myTabController;

  @override
  void initState() {
    super.initState();
    _myTabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("WhatsApp"),
        backgroundColor: Theme.of(context).primaryColor,
        actions: <Widget>[
          new TextButton(
              onPressed: () {},
              child: new Icon(
                Icons.search,
                color: Colors.white,
              )),
          new TextButton(
              onPressed: () {},
              child: new Icon(Icons.more_vert, color: Colors.white)),
        ],
        bottom: new TabBar(
          controller: _myTabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.camera_alt),
            ),
            new Tab(
              text: "CHATS",
            ),
            new Tab(
              text: "STATUS",
            ),
            new Tab(
              text: "CALLS",
            )
          ],
        ),
      ),
      body: new TabBarView(
        controller: _myTabController,
        children: <Widget>[
          new Camera(),
          new Chats(),
          new Status(),
          new Calls(),
        ],
      ),
    );
  }
}
