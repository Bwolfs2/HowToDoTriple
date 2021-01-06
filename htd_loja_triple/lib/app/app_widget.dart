import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:asuka/asuka.dart' as asuka;

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'How To Do Loja Stores',
      theme: ThemeData(
        primaryColor: Colors.amber,
        accentColor: Colors.yellow,
        backgroundColor: Color(0xffFFF7E4),
      ),
      initialRoute: '/',
      builder: asuka.builder,
    ).modular();
  }
}
