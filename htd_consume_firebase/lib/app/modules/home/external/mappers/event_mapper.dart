import 'package:htd_consume_firebase/app/modules/home/domain/entities/event_entity.dart';
import 'package:htd_consume_firebase/app/modules/home/external/datasource/datasource.dart';

import 'address_mapper.dart';

mixin EventMapper implements Mapper<EventEntity> {
  Map<String, dynamic> toMap(EventEntity event) {
    return {
      'id': event.id,
      'name': event.name,
      'points': event.points,
      'dateEvent': event.dateEvent.millisecondsSinceEpoch,
      'completed': event.completed,
      'addresses': event.addresses.map((e) => AddressMapper.toMap(e)).toList()
    };
  }

  EventEntity fromMap(Map<dynamic, dynamic> map) {
    return EventEntity(
      id: map['id'],
      name: map['name'],
      points: map['points'],
      dateEvent: DateTime.fromMillisecondsSinceEpoch(map['dateEvent']),
      completed: map['completed'],
      addresses: map['addresses'] == null ? [] : (map['addresses'] as List).map((e) => AddressMapper.fromMap(e as Map)).toList(),
    );
  }
}
