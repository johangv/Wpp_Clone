import 'package:flutter/material.dart';
import 'package:wpp_clone/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  final String name;
  final String imgUrl;
  ChatScreen({required this.name, required this.imgUrl});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {
  final List<ChatMessage> _messageList = <ChatMessage>[];
  final TextEditingController _textController = new TextEditingController();
  bool _isTyped = false;
  bool _isNew = false;
  final String autor = "Johan Alberto";

  ChatModel newChat(String name, String message, String time, String imageUrl) {
    _isNew = true;
    return new ChatModel(
        name: name, message: message, time: time, imageUrl: imageUrl);
  }

  void _handledSubmit(String text) {
    _textController.clear();
    ChatMessage message = new ChatMessage(
        text: text,
        animationController: new AnimationController(
            duration: new Duration(milliseconds: 700), vsync: this),
        name: autor);

    setState(() {
      _messageList.insert(0, message);
      var data = messageData.firstWhere((t) => t.name == widget.name,
          orElse: () =>
              newChat(widget.name, message.text, "10:00", widget.imgUrl));
      if (_isNew) {
        _isNew = false;
        messageData.insert(0, data);
      }
      data.message = message.text;
    });
    message.animationController.forward();
    _isTyped = false;
  }

  Widget _buildTextComposer() {
    return new Container(
      child: new Row(
        children: <Widget>[
          new Flexible(
              child: new TextField(
            decoration: new InputDecoration(hintText: "Message"),
            controller: _textController,
            onChanged: (String text) {
              setState(() {
                _isTyped = text.length > 0;
              });
            },
          )),
          new Container(
            child: new RawMaterialButton(
              shape: CircleBorder(),
              fillColor: Color.fromRGBO(7, 94, 85, 1.0),
              padding: EdgeInsets.all(13.0),
              child: Icon(
                _isTyped ? Icons.send : Icons.mic,
                color: Colors.white,
                size: 20.0,
              ),
              onPressed:
                  _isTyped ? () => _handledSubmit(_textController.text) : null,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.name),
        ),
        body: new Container(
          child: new Column(
            children: <Widget>[
              new Flexible(
                  child: new ListView.builder(
                itemBuilder: (_, int index) => _messageList[index],
                itemCount: _messageList.length,
                padding: new EdgeInsets.all(8.0),
                reverse: true,
              )),
              new Divider(
                height: 1.0,
              ),
              new Container(
                child: _buildTextComposer(),
              )
            ],
          ),
        ));
  }
}

class ChatMessage extends StatelessWidget {
  ChatMessage(
      {required this.text,
      required this.animationController,
      required this.name});
  final String text;
  final AnimationController animationController;
  final String name;

  @override
  Widget build(BuildContext context) {
    return new SizeTransition(
      sizeFactor: new CurvedAnimation(
          parent: animationController, curve: Curves.easeOut),
      child: new Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.only(right: 16.0),
              child: new CircleAvatar(
                child: new Text(
                  name[0],
                ),
                backgroundColor: Color.fromRGBO(7, 94, 85, 1.0),
              ),
            ),
            new Expanded(
                child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(name, style: Theme.of(context).textTheme.subtitle1),
                new Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child: new Text(text),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
