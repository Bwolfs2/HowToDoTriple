import 'package:dartz/dartz.dart' hide Task;
import 'package:task_clean_app/app/modules/my_tasks/domain/entities/task.dart';
import 'package:task_clean_app/app/modules/my_tasks/domain/errors/erros.dart';
import 'package:task_clean_app/app/modules/my_tasks/domain/repositories/task_repository_interface.dart';

abstract class IAddNewTask {
  Future<Either<IFailure, Task>> call(Task task);
}

class AddNewTask implements IAddNewTask {
  final ITaskRepository repository;

  AddNewTask(this.repository);

  @override
  Future<Either<IFailure, Task>> call(Task task) async {
    assert(task.id == null);

    if (task.initTime.isAfter(task.endTime)) {
      return Left(
        InvalidTask(
          message: "Hora inicial deve ser maior que a hora final.",
        ),
      );
    }

    if (task.initTime.isBefore(DateTime.now())) {
      return Left(
        InvalidTask(
          message: "Hora inicial deve ser maior que a hora atual.",
        ),
      );
    }

    if (task.description.trim().length == 0) {
      return Left(
        InvalidTask(
          message: "Descrição deve ser informado.",
        ),
      );
    }

    return await repository.addNewTask(task);
  }
}
