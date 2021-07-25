import 'package:uuid/uuid.dart';

import 'entity.dart';

//Normally i dont use Entity on my entities but how "Event" is a common word i will use it to avoid some errors
class EventEntity extends Entity {
  final String name;
  final double points;
  final DateTime dateEvent;
  final bool completed;

  EventEntity({
    String? id,
    required this.name,
    required this.points,
    required this.dateEvent,
    this.completed = false,
  }) : super(id ?? Uuid().v4());

  EventEntity copyWith({
    String? id,
    String? name,
    double? points,
    DateTime? dateEvent,
    bool? completed,
  }) {
    return EventEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      points: points ?? this.points,
      dateEvent: dateEvent ?? this.dateEvent,
      completed: completed ?? this.completed,
    );
  }
}
