import 'package:flutter/material.dart';

class BwolfPage extends StatefulWidget {
  const BwolfPage({Key? key}) : super(key: key);

  @override
  _BwolfPageState createState() => _BwolfPageState();
}

class _BwolfPageState extends State<BwolfPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bwolf Module'),
      ),
      body: Center(
        child: Text('Bwolf`s Module'),
      ),
    );
  }
}
