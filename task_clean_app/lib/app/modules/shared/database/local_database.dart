import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:task_clean_app/app/modules/my_tasks/external/daos/tasks_dao.dart';
import 'package:task_clean_app/app/modules/my_tasks/external/models/task_entidade.dart';

part 'local_database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [TaskEntidade])
abstract class AppDatabase extends FloorDatabase {
  TasksDao get taskDao;
}
