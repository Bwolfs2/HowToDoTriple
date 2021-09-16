import 'package:how_to_do_error_handling/app/modules/auth/domain/entity/user.dart';
import 'package:how_to_do_error_handling/app/modules/auth/domain/repositories/auth_repository.dart';
import 'package:how_to_do_error_handling/app/modules/auth/infra/datasources/auth_datasource.dart';

class AuthRepository implements IAuthRepository {
  final IAuthDatasource _authDatasource;

  AuthRepository(this._authDatasource);
  @override
  Future<User> executeSignin(String email, String password) {
    return _authDatasource.executeSignin(email, password);
  }
}
