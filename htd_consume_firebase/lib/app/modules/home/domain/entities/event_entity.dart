import 'dart:convert';

import 'package:uuid/uuid.dart';

import 'entity.dart';

//Normally i dont use Entity on my entities but how "Event" is a common word i will use it to avoid some errors
class EventEntity extends Entity {
  final String name;
  final double points;
  final DateTime dateEvent;
  final bool completed;

  final List<AddressEntity> addresses;

  EventEntity(
      {String? id, required this.name, required this.points, required this.dateEvent, this.completed = false, required this.addresses})
      : super(id ?? Uuid().v4());

  EventEntity copyWith({
    String? id,
    String? name,
    double? points,
    DateTime? dateEvent,
    bool? completed,
    List<AddressEntity>? address,
  }) {
    return EventEntity(
        id: id ?? this.id,
        name: name ?? this.name,
        points: points ?? this.points,
        dateEvent: dateEvent ?? this.dateEvent,
        completed: completed ?? this.completed,
        addresses: address ?? []);
  }
}

class AddressEntity extends Entity {
  final String name;
  final int number;
  final String complement;
  AddressEntity(String id, this.name, this.number, this.complement) : super(id);
}
