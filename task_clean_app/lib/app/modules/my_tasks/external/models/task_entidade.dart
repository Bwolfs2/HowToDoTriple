import 'package:floor/floor.dart';

import 'package:task_clean_app/app/modules/my_tasks/domain/entities/task.dart';

@Entity(tableName: 'TaskEntidade')
class TaskEntidade {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final int initTime;
  final int endTime;
  final String description;

  TaskEntidade(this.id, this.initTime, this.endTime, this.description);

  factory TaskEntidade.fromDomain(Task task) {
    return TaskEntidade(
      task.id,
      task.initTime.millisecondsSinceEpoch,
      task.endTime.millisecondsSinceEpoch,
      task.description,
    );
  }

  Task toDomain() {
    return Task(
      id: id,
      initTime: DateTime.fromMillisecondsSinceEpoch(initTime),
      endTime: DateTime.fromMillisecondsSinceEpoch(endTime),
      description: description,
    );
  }

  TaskEntidade copyWith({
    int? id,
    int? initTime,
    int? endTime,
    String? description,
  }) {
    return TaskEntidade(
      id ?? this.id,
      initTime ?? this.initTime,
      endTime ?? this.endTime,
      description ?? this.description,
    );
  }
}
