import 'package:task_clean_app/app/modules/my_tasks/domain/entities/task.dart';

abstract class ITaskDataSource {
  Future<void> addNewTask(Task task);

  Future<List<Task>> retrieveAllTask();

  Future<void> updateTask(Task task);

  Future<void> removeTask(Task task);
}
