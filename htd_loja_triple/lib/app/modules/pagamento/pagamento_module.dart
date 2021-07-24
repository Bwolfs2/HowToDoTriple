import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/stores/auth/auth_view_model.dart';

import 'pagamento_page.dart';
import 'pages/dados_endereco/dados_endereco_controller.dart';
import 'pages/dados_endereco/dados_endereco_page.dart';
import 'pages/dados_pagamento/dados_pagamento_controller.dart';
import 'pages/dados_pagamento/dados_pagamento_page.dart';
import 'pages/pagamento_sucesso/pagamento_sucesso_controller.dart';
import 'pages/pagamento_sucesso/pagamento_sucesso_page.dart';
import 'stores/pagamento_store.dart';

class PagamentoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => PagamentoSucessoController(i.get<PagamentoStore>())),
    Bind((i) => DadosPagamentoController(i.get<PagamentoStore>())),
    Bind((i) => DadosEnderecoController(i.get<PagamentoStore>())),
    //stores
    Bind((i) => PagamentoStore(i.get<AuthViewModel>())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => PagamentoPage()),
    ChildRoute("/endereco", child: (_, args) => DadosEnderecoPage(), transition: TransitionType.rightToLeft),
    ChildRoute("/dadosPagamento", child: (_, args) => DadosPagamentoPage(), transition: TransitionType.rightToLeft),
    ChildRoute("/sucesso", child: (_, args) => PagamentoSucessoPage()),
  ];
}
