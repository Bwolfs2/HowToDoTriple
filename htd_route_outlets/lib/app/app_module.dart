import 'package:flutter_modular/flutter_modular.dart';

import 'app_controller.dart';
import 'modules/root/root_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => AppController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: RootModule()),
    ModuleRoute('/root', module: RootModule()),
  ];
}
