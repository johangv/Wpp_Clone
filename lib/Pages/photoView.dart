import 'package:flutter/material.dart';

class ImgShow extends StatefulWidget {
  final String path;
  ImgShow(this.path);
  @override
  _ImgShowState createState() => _ImgShowState();
}

class _ImgShowState extends State<ImgShow> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          new IconButton(
              onPressed: () {},
              icon: Icon(Icons.crop_rotate, color: Colors.white)),
          new IconButton(
              onPressed: () {},
              icon: Icon(Icons.sentiment_satisfied_alt, color: Colors.white)),
          new IconButton(
              onPressed: () {}, icon: Icon(Icons.title, color: Colors.white)),
          new IconButton(onPressed: () {}, icon: Icon(Icons.edit_outlined)),
        ],
      ),
      //body: Image.file(widget.path),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.check,
          color: Colors.white,
          size: 40.0,
        ),
      ),
    );
  }
}
