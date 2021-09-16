import 'package:flutter_modular/flutter_modular.dart';
import 'package:how_to_do_error_handling/app/modules/auth/domain/user_cases/execute_signin.dart';
import 'package:how_to_do_error_handling/app/modules/auth/external/datasource/auth_datasource.dart';
import 'package:how_to_do_error_handling/app/modules/auth/infra/repository/auth_repository.dart';

import 'presenter/auth_page.dart';
import 'presenter/auth_store.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AuthStore(i())),
    //Repository
    Bind.lazySingleton((i) => AuthRepository(i())),
    //Data Source
    Bind.lazySingleton((i) => AuthDatasource()),
    //Use Case
    Bind.lazySingleton((i) => ExecuteSignin(i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => AuthPage()),
  ];
}
