import 'package:flutter_modular/flutter_modular.dart';
import '../../shared/stores/auth/auth_view_model.dart';

import 'loja_store.dart';
import 'loja_page.dart';
import 'repositories/loja_repository.dart';

class LojaModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => LojaRepository()),
    Bind(
      (i) => LojaStore(
        i.get<LojaRepository>(),
        i.get<AuthViewModel>(),
      ),
    ),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => LojaPage(), transition: TransitionType.fadeIn),
  ];
}
