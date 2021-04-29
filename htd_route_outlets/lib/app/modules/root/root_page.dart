import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'root_controller.dart';

class RootPage extends StatefulWidget {
  final String title;
  const RootPage({Key? key, this.title = "Root"}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends ModularState<RootPage, RootController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RouterOutlet(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: RxBuilder(
        builder: (BuildContext context) {
          return BubbleBottomBar(
            currentIndex: controller.selectedIndex.value,
            onTap: (index) => controller.changePage(index),
            fabLocation: BubbleBottomBarFabLocation.end,
            hasNotch: true,
            opacity: .2,
            items: <BubbleBottomBarItem>[
              BubbleBottomBarItem(
                icon: Icon(
                  Icons.chat,
                  color: Colors.red,
                ),
                backgroundColor: Colors.red,
                title: Text("Chat"),
                activeIcon: Icon(Icons.chat),
              ),
              BubbleBottomBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.green,
                ),
                backgroundColor: Colors.green,
                title: Text("Status"),
                activeIcon: Icon(Icons.favorite),
              ),
              BubbleBottomBarItem(
                icon: Icon(
                  Icons.phone,
                  color: Colors.blue,
                ),
                backgroundColor: Colors.blue,
                title: Text("Calls"),
                activeIcon: Icon(Icons.phone),
              ),
            ],
          );
        },
      ),
    );
  }
}
