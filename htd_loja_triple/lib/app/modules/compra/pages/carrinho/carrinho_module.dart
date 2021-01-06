import '../../../../modules/compra/pages/carrinho/widgets/carrinho_lista_produtos/carrinho_lista_produtos_controller.dart';
import '../../../../modules/compra/pages/carrinho/widgets/carrinho_total/carrinho_total_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'carrinho_controller.dart';
import 'carrinho_page.dart';

class CarrinhoModule extends ChildModule {
  @override
  final List<Bind> binds = [
    Bind((i) => CarrinhoListaProdutosController()),
    Bind((i) => CarrinhoTotalController()),
    Bind((i) => CarrinhoController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute("/:title",
        child: (_, args) => CarrinhoPage(title: args?.params?["title"])),
  ];
}
