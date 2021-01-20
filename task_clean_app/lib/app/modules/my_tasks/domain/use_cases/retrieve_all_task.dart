import 'package:dartz/dartz.dart' hide Task;
import 'package:task_clean_app/app/modules/my_tasks/domain/entities/task.dart';
import 'package:task_clean_app/app/modules/my_tasks/domain/errors/erros.dart';
import 'package:task_clean_app/app/modules/my_tasks/domain/repositories/task_repository_interface.dart';

abstract class IRetrieveAllTask {
  Future<Either<IFailure, List<Task>>> call();
}

class RetrieveAllTask implements IRetrieveAllTask {
  final ITaskRepository repository;

  RetrieveAllTask(this.repository);

  @override
  Future<Either<IFailure, List<Task>>> call() async {
    return await repository.retrieveAllTask();
  }
}
