import 'package:flutter_triple/flutter_triple.dart';
import 'package:intl/intl.dart';

class CustomLineDatePickerController {
  RxNotifier<String> seletedDate = RxNotifier("Selecione a Data");

  void setValue(val) =>
      seletedDate.value = DateFormat("dd/MM/yyyy hh:mm").format(val);
}
