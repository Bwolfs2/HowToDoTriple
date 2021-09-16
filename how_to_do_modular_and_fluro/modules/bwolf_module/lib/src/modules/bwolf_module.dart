import 'package:bwolf_module/src/modules/bwolf_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BwolfModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => BwolfPage()),
      ];
}
