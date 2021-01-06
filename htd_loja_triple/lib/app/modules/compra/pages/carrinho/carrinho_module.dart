import 'package:flutter_modular/flutter_modular.dart';

import 'carrinho_page.dart';

class CarrinhoModule extends ChildModule {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute("/:title",
        child: (_, args) => CarrinhoPage(title: args?.params?["title"])),
  ];
}
