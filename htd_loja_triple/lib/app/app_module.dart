import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'app_controller.dart';
import 'app_widget.dart';
import 'modules/auth/auth_module.dart';
import 'modules/compra/compra_module.dart';
import 'modules/loja/loja_module.dart';
import 'modules/pagamento/pagamento_module.dart';
import 'modules/produto/produto_module.dart';
import 'shared/stores/auth/auth_view_model.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => AppController()),
    Bind((i) => AuthViewModel()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: LojaModule(), transition: TransitionType.fadeIn),
    ModuleRoute("/login", module: AuthModule(), transition: TransitionType.fadeIn),
    ModuleRoute("/produto", module: ProdutoModule(), transition: TransitionType.rightToLeft),
    ModuleRoute("/compra", module: CompraModule(), transition: TransitionType.fadeIn),
    ModuleRoute("/pagamento", module: PagamentoModule(), transition: TransitionType.fadeIn),
  ];

  @override
  Widget get bootstrap => AppWidget();
}
