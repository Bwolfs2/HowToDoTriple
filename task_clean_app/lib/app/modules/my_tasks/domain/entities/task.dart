class Task {
  int? id;
  DateTime initTime;
  DateTime endTime;
  String description;

  Task({
    this.id,
    required this.initTime,
    required this.endTime,
    required this.description,
  });

  bool get isFinished => endTime.isBefore(DateTime.now());

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Task && o.id == id;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        initTime.hashCode ^
        endTime.hashCode ^
        description.hashCode;
  }

  Task copyWith({
    int? id,
    DateTime? initTime,
    DateTime? endTime,
    String? description,
  }) {
    return Task(
      id: id ?? this.id,
      initTime: initTime ?? this.initTime,
      endTime: endTime ?? this.endTime,
      description: description ?? this.description,
    );
  }
}
