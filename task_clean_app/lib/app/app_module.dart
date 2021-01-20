import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:task_clean_app/app/app_widget.dart';

import 'modules/my_tasks/my_tasks_module.dart';
import 'modules/shared/database/database_shared.dart';
import 'modules/shared/database/local_database.dart';
import 'modules/splash/splash_module.dart';

class AppModule extends MainModule {
  @override
  final List<Bind> binds = [
    Bind((i) => DatabaseShared()),
    Bind<AppDatabase>((i) => i<DatabaseShared>().database),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashModule()),
    ModuleRoute("/myTasks", module: MyTasksModule()),
  ];

  @override
  Widget get bootstrap => AppWidget();
}
