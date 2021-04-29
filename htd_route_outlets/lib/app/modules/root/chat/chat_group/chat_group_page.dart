import 'package:flutter/material.dart';

class ChatGroupPage extends StatefulWidget {
  final String title;
  const ChatGroupPage({Key? key, this.title = "ChatGroup"}) : super(key: key);

  @override
  _ChatGroupPageState createState() => _ChatGroupPageState();
}

class _ChatGroupPageState extends State<ChatGroupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
