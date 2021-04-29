import 'package:flutter_modular/flutter_modular.dart';

import 'chat_group_page.dart';

class ChatGroupModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => ChatGroupPage()),
  ];
}
