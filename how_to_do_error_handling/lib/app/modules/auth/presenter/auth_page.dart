import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:asuka/asuka.dart' as asuka;

import 'auth_store.dart';

class AuthPage extends StatefulWidget {
  final String title;
  const AuthPage({Key? key, this.title = 'AuthPage'}) : super(key: key);
  @override
  AuthPageState createState() => AuthPageState();
}

class AuthPageState extends State<AuthPage> {
  final AuthStore store = Modular.get();

  @override
  void initState() {
    super.initState();

    store.observer(
      onError: (error) {
        asuka.showSnackBar(SnackBar(content: Text(error.toString())));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                store.launchException();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Exception'),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                store.launchTreatedException();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Exception Treated'),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                store.launchTreatedOkException();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Format Exception'),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                store.launchTreatedOnErrorException();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Show Error'),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                store.executeSignin();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Execute Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
