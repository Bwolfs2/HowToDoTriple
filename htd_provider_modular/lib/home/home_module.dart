import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../home/home_page.dart';
import '../core/module.dart';
import 'home_repository.dart';

class HomeModule extends Module {
  HomeModule() : super();

  @override
  final List<SingleChildWidget> providers = [
    Provider<HomeRepository>(create: (context) => HomeRepository()),
  ];

  @override
  final Widget page = HomePage();

  var navigator = Navigator(
    key: GlobalKey(),
    pages: [],
  );
}
