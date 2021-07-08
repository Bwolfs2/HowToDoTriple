import 'package:flutter/material.dart';

class DismissiblePage extends StatefulWidget {
  const DismissiblePage({Key? key}) : super(key: key);

  @override
  _DismissiblePageState createState() => _DismissiblePageState();
}

class _DismissiblePageState extends State<DismissiblePage> {
  final list = List.generate(10, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Dismissible List'),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Dismissible(
            background: Container(color: Colors.red),
            onDismissed: (direction) {
              setState(() {
                list.removeAt(index);
              });

              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${list[index]} dismissed')));
            },
            key: ValueKey(list[index]),
            child: ListTile(
              title: Text(list[index]),
            ),
          );
        },
      ),
    );
  }
}
