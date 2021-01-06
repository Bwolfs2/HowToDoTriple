import 'package:flutter_modular/flutter_modular.dart';

import 'compra_page.dart';
import 'pages/carrinho/carrinho_module.dart';

class CompraModule extends ChildModule {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, args) => CompraPage(
              produtoModel: args?.data,
            )),
    ModuleRoute("/carrinho",
        module: CarrinhoModule(), transition: TransitionType.fadeIn),
  ];
}
