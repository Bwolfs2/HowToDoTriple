import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ChatPage extends StatefulWidget {
  final String title;
  const ChatPage({Key? key, this.title = "Chat"}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  //use 'controller' variable to access controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green.withOpacity(.8)),
                onPressed: () {
                  Modular.to.pushNamed('./chatUser', forRoot: true); // Sai para fora do Outlet
                },
                child: Text(
                  "Chat User",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue.withOpacity(.8)),
                onPressed: () {
                  Modular.to.pushNamed('./chatGroup'); // Fica dentro do Outlet
                },
                child: Text(
                  "Chat Group",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
