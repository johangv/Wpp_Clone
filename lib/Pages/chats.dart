import 'package:flutter/material.dart';
import 'package:wpp_clone/models/chat_model.dart';
import 'package:wpp_clone/Pages/chat_screen.dart';
import 'package:wpp_clone/Pages/contacts.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  void moveToChat(String name, String imgUrl) {
    var route = new MaterialPageRoute(
        builder: (context) => new ChatScreen(
              name: name,
              imgUrl: imgUrl,
            ));
    Navigator.push(context, route);
  }

  void moveToContacts() {
    var route = new MaterialPageRoute(
        builder: (BuildContext context) => new Contacts());
    Navigator.of(context).push(route);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (context, i) => new Column(
          children: <Widget>[
            new ListTile(
              onTap: () {
                moveToChat(messageData[i].name, messageData[i].imageUrl);
              },
              leading: new CircleAvatar(
                backgroundImage: NetworkImage(messageData[i].imageUrl),
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    messageData[i].name,
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  ),
                  new Text(
                    messageData[i].time,
                    style: new TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ],
              ),
              subtitle: new Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: new Text(
                  messageData[i].message,
                  style: new TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: moveToContacts,
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
    );
  }
}
