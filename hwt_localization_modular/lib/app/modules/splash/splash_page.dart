import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../app_module.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key? key, this.title = 'SplashPage'}) : super(key: key);
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.wait([
      Modular.isModuleReady<AppModule>()
    ]).then((value) => Modular.to.pushNamed('/home'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
