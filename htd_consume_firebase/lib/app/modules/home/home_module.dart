import 'package:flutter_modular/flutter_modular.dart';
import 'package:htd_consume_firebase/app/modules/home/domain/usecase/get_event_by_id.dart';
import 'package:htd_consume_firebase/app/modules/home/domain/usecase/get_events.dart';
import 'package:htd_consume_firebase/app/modules/home/domain/usecase/remove_event_by_id.dart';

import 'domain/usecase/add_event.dart';
import 'domain/usecase/update_event.dart';
import 'external/datasource/event_datasource_impl.dart';
import 'infra/repositories/event_repository_impl.dart';
import 'presenter/home_page.dart';
import 'presenter/home_store.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => HomeStore(i(), i(), i(), i())),

    //
    Bind.lazySingleton((i) => AddEvent(i())),
    Bind.lazySingleton((i) => UpdateEvent(i())),
    Bind.lazySingleton((i) => GetEventByid(i())),
    Bind.lazySingleton((i) => GetEvents(i())),
    Bind.lazySingleton((i) => RemoveEventById(i())),
    //
    Bind.lazySingleton((i) => EventRepositoryImpl(i())),
    Bind.lazySingleton((i) => EventDatasourceImpl()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
  ];
}
