import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var list = List.generate(10, (index) => 'Item $index');
  var listKey = GlobalKey<AnimatedListState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My List'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //   list = List.generate(20, (index) => 'Item $index');
          // listKey.currentState?.build(context);
          listKey.currentState?.removeItem(
            5,
            (BuildContext context, Animation<double> animation) => Container(),
          );
        },
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) => MeuWidget(),
      ),
      // body: AnimatedList(
      //   key: listKey,
      //   initialItemCount: list.length,
      //   itemBuilder: (context, index, animation) {
      //     return AnimatedBuilder(
      //       animation: animation,
      //       builder: (context, child) => Container(
      //         child: child,
      //       ),
      //       child: ListTile(
      //         title: Text(list[index]),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}

class MeuWidget extends StatelessWidget {
  static MeuWidget? _instance;

  static MeuWidget get getInstance {
    if (_instance == null) {
      print('Null');
      _instance = MeuWidget._();
    }
    return _instance!;
  }

  const MeuWidget._({Key? key}) : super(key: key);

  factory MeuWidget() => getInstance;

  @override
  Widget build(BuildContext context) {
    print('Foi?');
    return Container(
      width: 150,
      height: 100,
      color: Colors.black12,
      margin: EdgeInsets.all(16),
      child: Text(math.Random().nextInt(100).toString()),
    );
  }
}
