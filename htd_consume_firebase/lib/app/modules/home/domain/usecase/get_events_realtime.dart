import 'package:htd_consume_firebase/app/modules/home/domain/entities/event_entity.dart';

import '../repositories/event_repository.dart';

class GetEventsRealtime {
  final IEventRepository _eventRepository;

  GetEventsRealtime(this._eventRepository);
  Future<Stream<List<EventEntity>>> call() async {
    return await _eventRepository.getEventsRealtime();
  }
}
