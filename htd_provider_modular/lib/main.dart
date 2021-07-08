import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home/home_repository.dart';
import 'main/main_page.dart';
import 'perfil/perfil_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PerfilRepository>(create: (_) => PerfilRepository()),
        Provider<HomeRepository>(create: (_) => HomeRepository()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainPage(),
      ),
    );
  }
}
