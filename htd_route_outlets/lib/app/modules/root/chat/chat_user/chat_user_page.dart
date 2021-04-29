import 'package:flutter/material.dart';

class ChatUserPage extends StatefulWidget {
  final String title;
  const ChatUserPage({Key? key, this.title = "ChatUser"}) : super(key: key);

  @override
  _ChatUserPageState createState() => _ChatUserPageState();
}

class _ChatUserPageState extends State<ChatUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
