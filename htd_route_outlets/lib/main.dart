import 'package:flutter/material.dart';
import 'package:htd_route_outlets/app/app_widget.dart';
import 'app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() => runApp(ModularApp(
      module: AppModule(),
      child: AppWidget(),
    ));
