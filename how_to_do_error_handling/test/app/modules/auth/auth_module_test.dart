import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:how_to_do_error_handling/app/modules/auth/auth_module.dart';
 
void main() {

  setUpAll(() {
    initModule(AuthModule());
  });
}