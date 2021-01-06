import 'package:flutter_modular/flutter_modular.dart';

import 'compra_controller.dart';
import 'compra_page.dart';
import 'pages/carrinho/carrinho_module.dart';

class CompraModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CompraController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: (_, args) => CompraPage(
                  produtoModel: args?.data,
                )),
        ModuleRoute("/carrinho",
            module: CarrinhoModule(), transition: TransitionType.fadeIn),
      ];
}
