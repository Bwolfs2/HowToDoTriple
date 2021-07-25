import 'package:htd_consume_firebase/app/modules/home/domain/entities/event_entity.dart';
import 'package:htd_consume_firebase/app/modules/home/external/datasource/datasource.dart';
import 'package:htd_consume_firebase/app/modules/home/external/mappers/event_mapper.dart';
import 'package:htd_consume_firebase/app/modules/home/infra/datasource/event_datasource.dart';

class EventDatasourceImpl extends Datasource<EventEntity> with EventMapper implements IEventDatasource {
  EventDatasourceImpl() : super('event_entity');
}
