import 'package:flutter/material.dart';
import 'package:htd_provider_modular/perfil/perfil_module.dart';
import 'package:htd_provider_modular/perfil/perfil_page.dart';
import 'package:provider/provider.dart';

import 'home_repository.dart';
import 'inner_home_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext _context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(Provider.of<HomeRepository>(_context).getHomeTitle),
            ElevatedButton(
              onPressed: () {
                Navigator.of(_context).push(
                  MaterialPageRoute(
                    builder: (_context) => InnerHomePage(),
                  ),
                );
              },
              child: Text('Perfil'),
            ),
          ],
        ),
      ),
    );
  }
}
