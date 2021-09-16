import 'package:flutter/cupertino.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:how_to_do_error_handling/app/modules/auth/domain/user_cases/execute_signin.dart';

class AuthStore extends NotifierStore<Exception, int> {
  final ExecuteSignin _executeSignin;

  AuthStore(this._executeSignin) : super(0);

  var number = 'my number';

  void launchException() {
    double.parse(number);
  }

  void launchTreatedException() {
    try {
      double.parse(number);
    } catch (e) {
      /*
      Black:   \x1B[30m
      Red:     \x1B[31m
      Green:   \x1B[32m
      Yellow:  \x1B[33m
      Blue:    \x1B[34m
      Magenta: \x1B[35m
      Cyan:    \x1B[36m
      White:   \x1B[37m
      Reset:   \x1B[0m
      */

      debugPrint('🚦 \x1B[31mErro ao converter o valor\x1B[0m');
    }
  }

  void launchTreatedOkException() {
    try {
      double.parse(number);
    } on FormatException catch (e) {
      debugPrint('🚦 \x1B[31mFormat Error\x1B[0m');
    }
  }

  void launchTreatedOnErrorException() {
    try {
      double.parse(number);
    } on FormatException catch (e) {
      setError(e);
      debugPrint('🚦 \x1B[31mFormat Error\x1B[0m');
    }
  }

  Future<void> executeSignin() async {
    var user = await _executeSignin('bwolfnoob@gmail.com', '123456').then((value) => null, onError: ((error, stackTrace) async {
      if (error is Exception) {
        setError(error, force: true);
        setLoading(false);
      } else {
        throw Exception('is expected a ${error.toString()} type, and receipt ${error.runtimeType}');
      }
    }));

    print(user.toString());
  }
}
