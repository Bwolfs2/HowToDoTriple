import 'package:htd_consume_firebase/app/modules/home/domain/entities/event_entity.dart';
import 'package:htd_consume_firebase/app/modules/home/domain/repositories/event_repository.dart';
import 'package:htd_consume_firebase/app/modules/home/infra/datasource/event_datasource.dart';

class EventRepositoryImpl implements IEventRepository {
  final IEventDatasource _eventDatasource;

  EventRepositoryImpl(this._eventDatasource);
  @override
  Future<bool> addOrUpdateEvent(EventEntity eventEntity) async {
    return await _eventDatasource.addOrUpdateEvent(eventEntity);
  }

  @override
  Future<EventEntity> getEventByid(String id) async {
    return await _eventDatasource.getEventByid(id);
  }

  @override
  Future<List<EventEntity>> getEvents() async {
    return await _eventDatasource.getEvents();
  }

  @override
  Future<bool> removeEventById(String id) async {
    return await _eventDatasource.removeEventById(id);
  }

  @override
  Future<Stream<List<EventEntity>>> getEventsRealtime() async {
    return await _eventDatasource.getEventsRealtime();
  }
}
