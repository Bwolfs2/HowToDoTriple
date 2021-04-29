import 'package:flutter_modular/flutter_modular.dart';
import 'status_page.dart';

class StatusModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => StatusPage()),
  ];
}
