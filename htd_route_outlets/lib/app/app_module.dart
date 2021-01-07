import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_controller.dart';
import 'app_widget.dart';
import 'modules/root/root_module.dart';

class AppModule extends MainModule {
  @override
  final List<Bind> binds = [
    Bind((i) => AppController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: RootModule()),
  ];

  @override
  Widget get bootstrap => AppWidget();
}
