import 'package:dartz/dartz.dart' hide Task;
import 'package:task_clean_app/app/modules/my_tasks/domain/entities/task.dart';
import 'package:task_clean_app/app/modules/my_tasks/domain/errors/erros.dart';
import 'package:task_clean_app/app/modules/my_tasks/domain/repositories/task_repository_interface.dart';
import 'package:task_clean_app/app/modules/my_tasks/infra/data_source/task_data_source_interface.dart';

class TaskRepository extends ITaskRepository {
  final ITaskDataSource taskDataSource;

  TaskRepository(this.taskDataSource);

  @override
  Future<Either<IFailure, Task>> addNewTask(Task task) async {
    try {
      await taskDataSource.addNewTask(task);
      return Right(task);
    } catch (e) {
      return Left(DatabaseError(message: e.toString()));
    }
  }

  @override
  Future<Either<IFailure, List<Task>>> retrieveAllTask() async {
    try {
      var tasks = await taskDataSource.retrieveAllTask();
      return Right(tasks);
    } catch (e) {
      return Left(DatabaseError(message: e.toString()));
    }
  }

  @override
  Future<Either<IFailure, Task>> updateTask(Task task) async {
    try {
      await taskDataSource.updateTask(task);
      return Right(task);
    } catch (e) {
      return Left(DatabaseError(message: e.toString()));
    }
  }

  @override
  Future<Either<IFailure, bool>> removeTask(Task task) async {
    try {
      await taskDataSource.removeTask(task);
      return Right(true);
    } catch (e) {
      return Left(DatabaseError(message: e.toString()));
    }
  }
}
