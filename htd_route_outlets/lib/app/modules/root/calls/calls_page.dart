import 'package:flutter/material.dart';

class CallsPage extends StatefulWidget {
  final String title;
  const CallsPage({Key? key, this.title = "Calls"}) : super(key: key);

  @override
  _CallsPageState createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
