import 'package:flutter_modular/flutter_modular.dart';
import 'calls_page.dart';

class CallsModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => CallsPage()),
  ];
}
