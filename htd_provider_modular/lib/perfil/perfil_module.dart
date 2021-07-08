import 'package:flutter/material.dart';
import 'package:htd_provider_modular/core/module.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'perfil_page.dart';
import 'perfil_repository.dart';

class PerfileModule extends Module {
  PerfileModule() : super();

  @override
  final List<SingleChildWidget> providers = [
    Provider<PerfilRepository>(create: (_) => PerfilRepository()),
  ];

  @override
  final Widget page = PerfilPage();
}
