import 'package:flutter_modular/flutter_modular.dart';

import 'modules/root/root_module.dart';
import 'modules/splash/splash_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashModule()),
    ModuleRoute('/root', module: RootModule()),
  ];
}
