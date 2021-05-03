import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_routeoutlet_lateral/app/modules/root/root_store.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  final String title;
  const RootPage({Key? key, this.title = 'RootPage'}) : super(key: key);
  @override
  RootPageState createState() => RootPageState();
}

class RootPageState extends State<RootPage> {
  final RootStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(
        children: <Widget>[
          Container(
            width: 300,
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text('Bwolf'),
                  accountEmail: Text('Bwolfnoob@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.black,
                  ),
                ),
                ListTile(
                  onTap: () {
                    Modular.to.navigate('../home');
                  },
                  title: Text('Home'),
                ),
                ListTile(
                  onTap: () {
                    Modular.to.navigate('../products');
                  },
                  title: Text('Product'),
                ),
              ],
            ),
          ),
          Expanded(
            child: RouterOutlet(),
          )
        ],
      ),
    );
  }
}
