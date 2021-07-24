import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_consume_firebase/app/modules/splash/splash_store.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key? key, this.title = 'SplashPage'}) : super(key: key);
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  final SplashStore store = Modular.get();

  var initializers = <Future>[
    Firebase.initializeApp(),
  ];

  @override
  void initState() {
    super.initState();
    Future.wait(initializers).then((value) => Modular.to.pushReplacementNamed('/home'));
  }

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
