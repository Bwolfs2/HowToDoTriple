import 'package:flutter_modular/flutter_modular.dart';
import 'package:task_clean_app/app/modules/my_tasks/domain/use_cases/add_new_task.dart';
import 'package:task_clean_app/app/modules/my_tasks/domain/use_cases/remove_task.dart';
import 'package:task_clean_app/app/modules/my_tasks/domain/use_cases/retrieve_all_task.dart';
import 'package:task_clean_app/app/modules/my_tasks/domain/use_cases/update_task.dart';
import 'package:task_clean_app/app/modules/my_tasks/external/local_data_source/local_data_source.dart';
import 'package:task_clean_app/app/modules/my_tasks/infra/repositories/task_repository.dart';

import 'ui/add_task/add_task_controller.dart';
import 'ui/list_tasks/list_tasks_controller.dart';
import 'ui/list_tasks/list_tasks_page.dart';
import 'ui/update_task/update_task_controller.dart';

class MyTasksModule extends Module {
  @override
  final List<Bind> binds = [
    //Controllers
    Bind((i) => UpdateTaskController(i()), isSingleton: false),
    Bind((i) => ListTasksController(i(), i()), isSingleton: false),
    Bind((i) => AddTaskController(i()), isSingleton: false),
    //Repositories
    Bind((i) => TaskRepository(i())),
    //DataSource
    Bind((i) => LocalDataSource(i())),
    //Use Cases
    Bind((i) => AddNewTask(i())),
    Bind((i) => RetrieveAllTask(i())),
    Bind((i) => UpdateTask(i())),
    Bind((i) => RemoveTask(i()))
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => ListTasksPage()),
  ];
}
