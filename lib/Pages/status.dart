import 'package:flutter/material.dart';
import 'package:wpp_clone/models/status_model.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        children: <Widget>[
          new ListTile(
            leading: new CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://i1.wp.com/hipertextual.com/wp-content/uploads/2018/09/man-of-steel-henry-cavill-superman-image.jpg?fit=1000%2C753&ssl=1"),
            ),
            title: new Text(
              "Raúl",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: new Text(
              "Add an update",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
              ),
            ),
          ),
          new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Flexible(
                  child: Padding(
                padding: EdgeInsets.only(left: 18.0, top: 10.0, bottom: 10.0),
                child: new Text(
                  "Recents",
                  style: TextStyle(
                      color: const Color.fromRGBO(106, 106, 106, 1.0),
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                ),
              )),
            ],
          ),
          ListView.builder(
              itemCount: status.length,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (context, i) {
                return new ListTile(
                  leading: new CircleAvatar(
                    backgroundImage: NetworkImage(status[i].imgUrl),
                  ),
                  title: new Text(
                    status[i].name,
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: new Container(
                    child: new Text(status[i].time),
                    padding: const EdgeInsets.only(top: 5.0),
                  ),
                );
              })
        ],
      ),
      floatingActionButton: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(bottom: 15.0),
                child: new Container(
                    width: 42.0,
                    height: 42.0,
                    child: FittedBox(
                        child: new FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: new Color.fromRGBO(237, 245, 247, 1.0),
                      child: new Icon(
                        Icons.mode,
                        color: new Color.fromRGBO(73, 107, 110, 1.0),
                        size: 30.0,
                      ),
                    )))),
            new FloatingActionButton(
              onPressed: () {},
              backgroundColor: Theme.of(context).accentColor,
              child: new Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
          ]),
    );
  }
}
