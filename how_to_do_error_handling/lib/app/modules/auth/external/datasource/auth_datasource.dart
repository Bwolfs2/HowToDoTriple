import 'package:how_to_do_error_handling/app/modules/auth/domain/entity/user.dart';
import 'package:how_to_do_error_handling/app/modules/auth/infra/datasources/auth_datasource.dart';

class AuthDatasource implements IAuthDatasource {
  @override
  Future<User> executeSignin(String email, String password) async {
    throw Exception("Can`t execute Login");

    return User(email, password);
  }
}
