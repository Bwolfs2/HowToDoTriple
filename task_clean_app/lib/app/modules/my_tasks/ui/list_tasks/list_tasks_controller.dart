import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';

import 'package:task_clean_app/app/modules/my_tasks/domain/entities/task.dart';
import 'package:task_clean_app/app/modules/my_tasks/domain/errors/erros.dart';
import 'package:task_clean_app/app/modules/my_tasks/domain/use_cases/remove_task.dart';
import 'package:task_clean_app/app/modules/my_tasks/domain/use_cases/retrieve_all_task.dart';
import 'package:asuka/asuka.dart' as asuka;

class ListTasksController extends NotifierStore<IFailure, TaskState> {
  final IRetrieveAllTask _retrieveAllTasks;
  final IRemoveTask _removeTask;

  ListTasksController(this._retrieveAllTasks, this._removeTask)
      : super(EmptyTaskState()) {
    getAllTasks();
  }

  Future<void> getAllTasks() async {
    setLoading(true);

    var result = await _retrieveAllTasks();

    result.fold(setError, (list) => update(TaskState(list)));

    setLoading(false);
  }

  Future<void> remove(Task task) async {
    var result = await _removeTask(task);

    result.fold(
      (left) => asuka.showSnackBar(SnackBar(content: Text(left.message))),
      (right) => getAllTasks(),
    );
  }
}

class TaskState {
  final List<Task> tasks;
  TaskState(this.tasks);
}

class EmptyTaskState extends TaskState {
  EmptyTaskState() : super([]);
}
