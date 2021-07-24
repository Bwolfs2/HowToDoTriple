import 'package:htd_consume_firebase/app/modules/home/domain/entities/event_entity.dart';
import 'package:uuid/uuid.dart';

class EventMapper {
  static Map<String, dynamic> toMap(EventEntity event) {
    return {
      'id': event.id,
      'name': event.name,
      'points': event.points,
      'dateEvent': event.dateEvent.millisecondsSinceEpoch,
      'completed': event.completed,
    };
  }

  static EventEntity fromMap(Map<dynamic, dynamic> map) {
    return EventEntity(
      id: map['id'],
      name: map['name'],
      points: map['points'],
      dateEvent: DateTime.fromMillisecondsSinceEpoch(map['dateEvent']),
      completed: map['completed'],
    );
  }
}
