import 'package:flutter_triple/flutter_triple.dart';
import 'package:htd_consume_firebase/app/modules/home/domain/entities/event_entity.dart';
import 'package:htd_consume_firebase/app/modules/home/domain/usecase/add_event.dart';
import 'package:htd_consume_firebase/app/modules/home/domain/usecase/get_events.dart';
import 'package:htd_consume_firebase/app/modules/home/domain/usecase/get_events_realtime.dart';
import 'package:htd_consume_firebase/app/modules/home/domain/usecase/remove_event_by_id.dart';
import 'package:htd_consume_firebase/app/modules/home/domain/usecase/update_event.dart';
import 'package:uuid/uuid.dart';

class HomeStore extends NotifierStore<Exception, List<EventEntity>> {
  final AddEvent _addEvent;
  final GetEvents _getEvents;
  final RemoveEventById _removeEventById;
  final UpdateEvent _updateEvent;
  final GetEventsRealtime _getEventsRealtime;

  HomeStore(this._addEvent, this._getEvents, this._removeEventById, this._updateEvent, this._getEventsRealtime) : super([]) {
    reloadData();
  }

  void reloadData() async => executeStream(await _getEventsRealtime());

  void addEvent() async {
    await _addEvent.call(
      EventEntity(
        name: 'name',
        points: 20,
        dateEvent: DateTime.now(),
        addresses: List.generate(
          5,
          (index) => AddressEntity(Uuid().v4(), 'Name', 233, 'Casa'),
        ),
      ),
    );
    // reloadData();
  }

  void updateEvent(EventEntity entity) async {
    await _updateEvent.call(entity.copyWith(completed: !entity.completed));
    // reloadData();
  }

  void removeEvent(String id) async {
    await _removeEventById(id);
    //  reloadData();
  }
}
