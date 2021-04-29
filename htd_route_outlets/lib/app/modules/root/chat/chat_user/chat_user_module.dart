import 'package:flutter_modular/flutter_modular.dart';
import 'chat_user_page.dart';

class ChatUserModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => ChatUserPage()),
  ];
}
