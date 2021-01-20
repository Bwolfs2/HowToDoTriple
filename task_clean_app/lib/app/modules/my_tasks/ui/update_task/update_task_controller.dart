import 'package:asuka/asuka.dart' as asuka;
import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:task_clean_app/app/modules/my_tasks/domain/entities/task.dart';
import 'package:task_clean_app/app/modules/my_tasks/domain/use_cases/update_task.dart';

class UpdateTaskController {
  final IUpdateTask _updateTask;

  UpdateTaskController(this._updateTask);

  late RxNotifier<Task> task;

  void setTask(Task _task) => task = RxNotifier<Task>(_task);

  setInitDate(DateTime date) =>
      task = RxNotifier<Task>(task.value.copyWith(initTime: date));

  setEndDate(DateTime date) =>
      task = RxNotifier<Task>(task.value.copyWith(endTime: date));

  setDescription(String description) {
    task = RxNotifier<Task>(task.value.copyWith(description: description));
  }

  Future<bool> updatetask() async {
    try {
      var result = await _updateTask(task.value);
      return result.fold(
        (left) {
          asuka.showSnackBar(SnackBar(content: Text(left.message)));
          return false;
        },
        (right) => true,
      );
    } catch (e) {
      print(e);
      asuka.showSnackBar(SnackBar(content: Text(e.toString())));
      return false;
    }
  }
}
