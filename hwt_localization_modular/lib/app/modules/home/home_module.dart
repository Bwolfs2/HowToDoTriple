import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';
import '../home/home_store.dart';

import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
    AsyncBind((i) => loadLocalization(), export: true)
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
  ];

  static Future<bool> loadLocalization() async {
    Localization.configuration(
      selectedLanguage: 'pt_BR',
      translationLocale: 'assets/lang',
    );
    return true;
  }
}
