import 'package:flutter_modular/flutter_modular.dart';
import 'chat_page.dart';
import 'chat_user/chat_user_module.dart';

import 'chat_group/chat_group_module.dart';

class ChatModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => ChatPage(),
    ),
    ModuleRoute("/chatUser", module: ChatUserModule(), transition: TransitionType.fadeIn),
    ModuleRoute("/chatGroup", module: ChatGroupModule(), transition: TransitionType.fadeIn)
  ];
}
