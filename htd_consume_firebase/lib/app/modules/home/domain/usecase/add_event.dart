import 'package:htd_consume_firebase/app/modules/home/domain/entities/event_entity.dart';

import '../repositories/event_repository.dart';

class AddEvent {
  final IEventRepository _eventRepository;

  AddEvent(this._eventRepository);
  Future<bool> call(EventEntity eventEntity) async {
    return await _eventRepository.addOrUpdateEvent(eventEntity);
  }
}
