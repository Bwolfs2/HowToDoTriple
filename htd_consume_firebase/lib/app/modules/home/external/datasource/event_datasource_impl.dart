import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:htd_consume_firebase/app/modules/home/domain/entities/event_entity.dart';
import 'package:htd_consume_firebase/app/modules/home/external/mappers/event_mapper.dart';
import 'package:htd_consume_firebase/app/modules/home/infra/datasource/event_datasource.dart';

class EventDatasourceImpl implements IEventDatasource {
  late CollectionReference collection;

  EventDatasourceImpl() {
    collection = FirebaseFirestore.instance.collection("event_entity");
  }

  @override
  Future<bool> addOrUpdateEvent(EventEntity eventEntity) async {
    collection.doc('${eventEntity.id}').set(EventMapper.toMap(eventEntity));

    return true;
  }

  @override
  Future<EventEntity> getEventByid(String id) async {
    var result = await collection.doc('$id').get();

    return EventMapper.fromMap(result.data() as Map);
  }

  @override
  Future<List<EventEntity>> getEvents() async {
    var result = await collection.get();
    return result.docs.map((e) {
      return EventMapper.fromMap(e.data() as Map);
    }).toList();
  }

  @override
  Future<bool> removeEventById(String id) async {
    try {
      await collection.doc('$id').delete();
      return true;
    } catch (e, stackTrace) {
      debugPrintStack(label: e.toString(), stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<Stream<List<EventEntity>>> getEventsRealtime() async {
    var result = collection.snapshots();
    return result.map((events) => events.docs.map((e) => EventMapper.fromMap(e.data() as Map)).toList());
  }
}
