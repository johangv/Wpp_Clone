import 'package:flutter/material.dart';
import 'package:wpp_clone/Pages/chat_screen.dart';
import 'package:wpp_clone/models/chat_model.dart';
import 'package:wpp_clone/models/contacts_model.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  void startChat(String name, String imgUrl) {
    var route = new MaterialPageRoute(
        builder: (context) => new ChatScreen(
              name: name,
              imgUrl: imgUrl,
            ));
    Navigator.push(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
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
        title: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Padding(
                  padding: EdgeInsets.only(bottom: 4.0),
                  child: new Text("Contacts")),
              new Text(
                messageData.length.toString() + " contacts",
                style: new TextStyle(
                    fontSize: 14.0, fontWeight: FontWeight.normal),
              ),
            ]),
      ),
      body: ListView(
        children: <Widget>[
          new ListTile(
            leading: new CircleAvatar(
              child: new Icon(
                Icons.group,
                color: Colors.white,
              ),
              backgroundColor: Theme.of(context).accentColor,
            ),
            title: Text(
              "New group",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          new ListTile(
            leading: new CircleAvatar(
              child: new Icon(
                Icons.person_add,
                color: Colors.white,
              ),
              backgroundColor: Theme.of(context).accentColor,
            ),
            title: Text(
              "New contact",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: new Icon(
              Icons.qr_code,
              color: Color.fromRGBO(108, 165, 153, 1.0),
            ),
            onTap: () {},
          ),
          ListView.builder(
            itemCount: contactData.length,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (context, i) {
              return new ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(contactData[i].imgUrl),
                ),
                title: new Text(
                  contactData[i].name,
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: new Container(
                  child: new Text(
                    contactData[i].sentence,
                    overflow: TextOverflow.ellipsis,
                  ),
                  padding: const EdgeInsets.only(top: 5.0),
                ),
                onTap: () {
                  startChat(contactData[i].name, contactData[i].imgUrl);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
