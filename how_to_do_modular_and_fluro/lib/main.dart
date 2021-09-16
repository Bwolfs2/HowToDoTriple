/*
 * fluro
 * Created by Yakka
 * https://theyakka.com
 * 
 * Copyright (c) 2019 Yakka, LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */
import 'package:bwolf_module/bwolf_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'components/app/app_component.dart';
import 'package:flutter/material.dart';

import 'components/home/home_component.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: AppComponent()));
}

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => HomeComponent()),
        ModuleRoute('/bwolf', module: BwolfModule()),
      ];
}
