import 'package:htd_consume_firebase/app/modules/home/domain/entities/event_entity.dart';

abstract class IEventDatasource {
  Future<EventEntity> getEventByid(String id);
  Future<bool> addOrUpdateEvent(EventEntity eventEntity);
  Future<List<EventEntity>> getEvents();

  removeEventById(String id) {}
}
