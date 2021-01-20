//import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:asuka/asuka.dart' as asuka;

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  navigatorKey: Modular.navigatorKey,
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      initialRoute: '/',
      //  navigatorObservers: [BotToastNavigatorObserver()],
      //    builder: BotToastInit(),
      builder: asuka.builder,
      //onGenerateRoute: Modular.generateRoute,
    ).modular();
  }
}
