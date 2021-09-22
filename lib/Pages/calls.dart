import 'package:flutter/material.dart';
import 'package:wpp_clone/models/calls_model.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView.builder(
        itemCount: callsData.length,
        itemBuilder: (context, i) => new Column(
          children: <Widget>[
            new ListTile(
              onTap: () {},
              leading: new CircleAvatar(
                backgroundImage: NetworkImage(callsData[i].imageUrl),
              ),
              title: new Text(
                callsData[i].name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  callsData[i].incoming
                      ? new Icon(
                          Icons.south_west,
                          size: 15.0,
                          color:
                              callsData[i].attended ? Colors.green : Colors.red,
                        )
                      : new Icon(
                          Icons.north_east,
                          size: 15.0,
                          color:
                              callsData[i].attended ? Colors.green : Colors.red,
                        ),
                  new Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: new Text(callsData[i].time)),
                ],
              ),
              trailing: new Icon(
                Icons.call,
                color: Theme.of(context).primaryColor,
              ),
            )
          ],
        ),
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
                        Icons.video_call,
                        color: new Color.fromRGBO(73, 107, 110, 1.0),
                        size: 35.0,
                      ),
                    )))),
            new FloatingActionButton(
              onPressed: () {},
              backgroundColor: Theme.of(context).accentColor,
              child: new Icon(
                Icons.add_ic_call,
                color: Colors.white,
              ),
            ),
          ]),
    );
  }
}
