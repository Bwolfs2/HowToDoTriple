import 'package:flutter_triple/flutter_triple.dart';
import 'package:htd_interfaces/app/modules/http_service/http_service.dart';
import 'package:htd_interfaces/app/service_locator/modular_service_locator.dart';
import 'package:htd_interfaces/app/service_locator/service_locator.dart';

class HomeStore extends NotifierStore<Exception, List<String>> {
  HomeStore() : super([]);

  Future<void> increment() async {
    setLoading(true);
    //Create a Instance of ur locator
    // IServiceLocator myLocator = ModularServiceLocator();
    // var data = myLocator.find<HttpService>();

    //Maybe using a globalLocator
    var data = serviceLocator.find<HttpService>();

    update(data.myData());

    setLoading(false);
  }
}
