import 'package:how_to_do_error_handling/app/modules/auth/domain/entity/user.dart';

abstract class IAuthRepository {
  Future<User> executeSignin(String email, String password);
}
