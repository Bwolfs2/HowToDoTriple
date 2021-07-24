import 'package:flutter_modular/flutter_modular.dart';
import '../../shared/stores/auth/auth_view_model.dart';

import 'produto_store.dart';
import 'produto_page.dart';
import 'repositories/produto_repository.dart';

class ProdutoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => ProdutoRepository()),
    Bind((i) => ProdutoStore(
          i.get<ProdutoRepository>(),
          i.args?.params["idLoja"],
          i.get<AuthViewModel>(),
        )),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute("/:nomeLoja/:logo/:idLoja",
        child: (_, args) => ProdutoPage(
              nomeDaLoja: args.params["nomeLoja"],
              id: args.params["idLoja"],
              logo: args.params["logo"],
            ),
        transition: TransitionType.fadeIn),
  ];
}
