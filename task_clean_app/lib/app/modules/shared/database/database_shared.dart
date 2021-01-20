import 'package:task_clean_app/app/modules/shared/database/local_database.dart';

class DatabaseShared {
  late AppDatabase _databaseShared;

  Future call() async {
    _databaseShared =
        await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  }

  AppDatabase get database => _databaseShared;
}
