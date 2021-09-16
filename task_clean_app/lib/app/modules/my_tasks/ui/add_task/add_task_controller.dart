import 'package:asuka/asuka.dart' as asuka;
import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:task_clean_app/app/modules/my_tasks/domain/entities/task.dart';
import 'package:task_clean_app/app/modules/my_tasks/domain/use_cases/add_new_task.dart';

class AddTaskController {
  final IAddNewTask _addNewTask;

  AddTaskController(this._addNewTask);

  RxNotifier<String> description = RxNotifier<String>('');

  late RxNotifier<DateTime> initTime;

  late RxNotifier<DateTime> endTime;

  setInitDate(DateTime date) => initTime = RxNotifier<DateTime>(date);

  setEndDate(DateTime date) => endTime = RxNotifier<DateTime>(date);

  setDescription(String _description) => description.value = _description;

  Future<bool> addNewtask() async {
    try {      
      var result = await _addNewTask(
        Task(
          description: description.value,
          endTime: endTime.value,
          initTime: initTime.value,
        ),
      );

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
