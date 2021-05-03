import 'package:htd_routeoutlet_lateral/app/modules/home/home_module.dart';
import 'package:htd_routeoutlet_lateral/app/modules/products/products_module.dart';
import 'package:htd_routeoutlet_lateral/app/modules/root/root_Page.dart';
import 'package:htd_routeoutlet_lateral/app/modules/root/root_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RootModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RootStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => RootPage(), children: [
      ModuleRoute('/home', module: HomeModule()),
      ModuleRoute('/products', module: ProductsModule()),
    ]),
  ];
}
