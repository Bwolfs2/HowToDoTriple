import 'package:dartz/dartz.dart' hide Task;
import 'package:task_clean_app/app/modules/my_tasks/domain/entities/task.dart';
import 'package:task_clean_app/app/modules/my_tasks/domain/errors/erros.dart';

abstract class ITaskRepository {
  Future<Either<IFailure, Task>> addNewTask(Task task);

  Future<Either<IFailure, List<Task>>> retrieveAllTask();

  Future<Either<IFailure, Task>> updateTask(Task task);

  Future<Either<IFailure, bool>> removeTask(Task task);
}
