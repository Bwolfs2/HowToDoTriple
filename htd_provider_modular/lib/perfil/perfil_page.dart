import 'package:flutter/material.dart';
import 'package:htd_provider_modular/perfil/perfil_repository.dart';
import 'package:provider/provider.dart';

class PerfilPage extends StatefulWidget {
  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(Provider.of<PerfilRepository>(context).getProfileTitle),
          ],
        ),
      ),
    );
  }
}
