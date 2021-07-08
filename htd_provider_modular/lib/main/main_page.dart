import 'package:flutter/material.dart';
import 'package:htd_provider_modular/home/home_module.dart';
import 'package:htd_provider_modular/perfil/perfil_module.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PerfileModule(),
              ));
            },
            child: Text('Perfil'),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomeModule(),
                ));
              },
              child: Text('Home')),
        ],
      ),
    );
  }
}
