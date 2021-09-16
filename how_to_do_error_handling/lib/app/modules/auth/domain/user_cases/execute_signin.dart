import 'package:how_to_do_error_handling/app/modules/auth/domain/entity/user.dart';
import 'package:how_to_do_error_handling/app/modules/auth/domain/repositories/auth_repository.dart';

abstract class IExecuteSignin {
  Future<User> call(String email, String password);
}

class ExecuteSignin extends IExecuteSignin {
  final IAuthRepository _authRepository;

  ExecuteSignin(this._authRepository);

  @override
  Future<User> call(String email, String password) async {
    return _authRepository.executeSignin(email, password);
  }
}
