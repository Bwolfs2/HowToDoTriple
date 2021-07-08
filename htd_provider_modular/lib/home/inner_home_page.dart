import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_repository.dart';

class InnerHomePage extends StatefulWidget {
  @override
  _InnerHomePageState createState() => _InnerHomePageState();
}

class _InnerHomePageState extends State<InnerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Text(Provider.of<HomeRepository>(context).getHomeTitle),
      ),
    );
  }
}
