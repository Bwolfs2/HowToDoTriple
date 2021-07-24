import '../../modules/auth/auth_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../modules/auth/auth_page.dart';
import '../../shared/stores/auth/auth_view_model.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    Bind(
      (i) => AuthController(i.get<AuthViewModel>()),
      isSingleton: false,
    ),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => AuthPage()),
  ];
}
