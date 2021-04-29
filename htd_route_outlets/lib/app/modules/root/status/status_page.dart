import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  final String title;
  const StatusPage({Key? key, this.title = "Status"}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
