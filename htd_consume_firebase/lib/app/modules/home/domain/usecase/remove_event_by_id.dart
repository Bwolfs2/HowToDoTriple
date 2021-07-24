import '../repositories/event_repository.dart';

class RemoveEventById {
  final IEventRepository _eventRepository;

  RemoveEventById(this._eventRepository);
  Future<bool> call(String id) async {
    return await _eventRepository.removeEventById(id);
  }
}
