import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';

class RootController {
  RxNotifier<int> selectedIndex = RxNotifier(0);

  void changePage(int index) {
    switch (index) {
      case 0:
        Modular.to.navigate('/root/chat');
        break;
      case 1:
        Modular.to.navigate('/root/status');
        break;
      case 2:
        Modular.to.navigate('/root/call');
        break;
      default:
    }

    selectedIndex.value = index;
  }
}
